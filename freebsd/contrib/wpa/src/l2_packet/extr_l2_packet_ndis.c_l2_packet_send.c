
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct l2_ethhdr {int h_proto; struct l2_ethhdr const* h_source; struct l2_ethhdr const* h_dest; } const l2_ethhdr ;
typedef struct l2_ethhdr u8 ;
typedef int u16 ;
struct l2_packet_data {struct l2_ethhdr const* own_addr; scalar_t__ l2_hdr; } ;
typedef int overlapped ;
typedef int OVERLAPPED ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_IO_PENDING ;
 size_t ETH_ALEN ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetOverlappedResult (int ,int *,scalar_t__*,int ) ;
 int MSG_DEBUG ;
 int TRUE ;
 scalar_t__ WriteFile (int ,struct l2_ethhdr const*,size_t,scalar_t__*,int *) ;
 int driver_ndis_get_ndisuio_handle () ;
 int htons (int ) ;
 int os_free (struct l2_ethhdr const*) ;
 struct l2_ethhdr* os_malloc (size_t) ;
 int os_memcpy (struct l2_ethhdr const*,struct l2_ethhdr const*,size_t) ;
 int os_memset (int *,int ,int) ;
 int wpa_printf (int ,char*,...) ;

int l2_packet_send(struct l2_packet_data *l2, const u8 *dst_addr, u16 proto,
     const u8 *buf, size_t len)
{
 BOOL res;
 DWORD written;
 struct l2_ethhdr *eth;

 OVERLAPPED overlapped;

 OVERLAPPED *o;

 if (l2 == ((void*)0))
  return -1;




 os_memset(&overlapped, 0, sizeof(overlapped));
 o = &overlapped;


 if (l2->l2_hdr) {
  res = WriteFile(driver_ndis_get_ndisuio_handle(), buf, len,
    &written, o);
 } else {
  size_t mlen = sizeof(*eth) + len;
  eth = os_malloc(mlen);
  if (eth == ((void*)0))
   return -1;

  os_memcpy(eth->h_dest, dst_addr, ETH_ALEN);
  os_memcpy(eth->h_source, l2->own_addr, ETH_ALEN);
  eth->h_proto = htons(proto);
  os_memcpy(eth + 1, buf, len);
  res = WriteFile(driver_ndis_get_ndisuio_handle(), eth, mlen,
    &written, o);
  os_free(eth);
 }

 if (!res) {
  DWORD err = GetLastError();

  if (err == ERROR_IO_PENDING) {
   wpa_printf(MSG_DEBUG, "L2(NDISUIO): Wait for pending "
       "write to complete");
   res = GetOverlappedResult(
    driver_ndis_get_ndisuio_handle(), &overlapped,
    &written, TRUE);
   if (!res) {
    wpa_printf(MSG_DEBUG, "L2(NDISUIO): "
        "GetOverlappedResult failed: %d",
        (int) GetLastError());
    return -1;
   }
   return 0;
  }

  wpa_printf(MSG_DEBUG, "L2(NDISUIO): WriteFile failed: %d",
      (int) GetLastError());
  return -1;
 }

 return 0;
}

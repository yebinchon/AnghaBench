
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct l2_packet_data {void (* rx_callback ) (void*,int const*,int const*,size_t) ;int l2_hdr; int * rx_avail; int own_addr; void* rx_callback_ctx; int ifname; } ;
struct TYPE_2__ {unsigned short first_proto; int refcount; int * stop_request; int * rx_thread; int * rx_processed; int * ready_for_read; struct l2_packet_data** l2; } ;


 int CloseHandle (int *) ;
 void* CreateEvent (int *,int ,int ,int *) ;
 int * CreateThread (int *,int ,int ,struct l2_packet_data*,int ,int *) ;
 int ETH_ALEN ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int * TEXT (char*) ;
 int TRUE ;
 int eloop_register_event (int *,int,int ,struct l2_packet_data*,int *) ;
 int eloop_unregister_event (int *,int) ;
 TYPE_1__* l2_ndisuio_global ;
 scalar_t__ l2_ndisuio_set_ether_type (unsigned short) ;
 int l2_ndisuio_start_read (struct l2_packet_data*,int ) ;
 int l2_packet_rx_event ;
 int l2_packet_rx_thread ;
 int os_free (struct l2_packet_data*) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_strlcpy (int ,char const*,int) ;
 void* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;

struct l2_packet_data * l2_packet_init(
 const char *ifname, const u8 *own_addr, unsigned short protocol,
 void (*rx_callback)(void *ctx, const u8 *src_addr,
       const u8 *buf, size_t len),
 void *rx_callback_ctx, int l2_hdr)
{
 struct l2_packet_data *l2;

 if (l2_ndisuio_global == ((void*)0)) {
  l2_ndisuio_global = os_zalloc(sizeof(*l2_ndisuio_global));
  if (l2_ndisuio_global == ((void*)0))
   return ((void*)0);
  l2_ndisuio_global->first_proto = protocol;
 }
 if (l2_ndisuio_global->refcount >= 2) {
  wpa_printf(MSG_ERROR, "L2(NDISUIO): Not more than two "
      "simultaneous connections allowed");
  return ((void*)0);
 }
 l2_ndisuio_global->refcount++;

 l2 = os_zalloc(sizeof(struct l2_packet_data));
 if (l2 == ((void*)0))
  return ((void*)0);
 l2_ndisuio_global->l2[l2_ndisuio_global->refcount - 1] = l2;

 os_strlcpy(l2->ifname, ifname, sizeof(l2->ifname));
 l2->rx_callback = rx_callback;
 l2->rx_callback_ctx = rx_callback_ctx;
 l2->l2_hdr = l2_hdr;

 if (own_addr)
  os_memcpy(l2->own_addr, own_addr, ETH_ALEN);

 if (l2_ndisuio_set_ether_type(protocol) < 0) {
  os_free(l2);
  return ((void*)0);
 }

 if (l2_ndisuio_global->refcount > 1) {
  wpa_printf(MSG_DEBUG, "L2(NDISUIO): Temporarily setting "
      "filtering ethertype to %04x", protocol);
  if (l2_ndisuio_global->l2[0])
   l2->rx_avail = l2_ndisuio_global->l2[0]->rx_avail;
  return l2;
 }

 l2->rx_avail = CreateEvent(((void*)0), TRUE, FALSE, ((void*)0));
 if (l2->rx_avail == ((void*)0)) {
  os_free(l2);
  return ((void*)0);
 }

 eloop_register_event(l2->rx_avail, sizeof(l2->rx_avail),
        l2_packet_rx_event, l2, ((void*)0));
 l2_ndisuio_start_read(l2, 0);


 return l2;
}

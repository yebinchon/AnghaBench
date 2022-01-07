
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int sock; } ;
struct wpa_driver_wired_data {TYPE_1__ common; scalar_t__ use_pae_group_addr; } ;
struct ieee8023_hdr {int ethertype; int * src; int * dest; } ;


 size_t ETH_ALEN ;
 int ETH_P_PAE ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int errno ;
 int htons (int ) ;
 int os_free (struct ieee8023_hdr*) ;
 int os_memcpy (int *,int const*,size_t) ;
 struct ieee8023_hdr* os_zalloc (size_t) ;
 int const* pae_group_addr ;
 int send (int ,int *,size_t,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,unsigned long,...) ;

__attribute__((used)) static int wired_send_eapol(void *priv, const u8 *addr,
       const u8 *data, size_t data_len, int encrypt,
       const u8 *own_addr, u32 flags)
{
 struct wpa_driver_wired_data *drv = priv;
 struct ieee8023_hdr *hdr;
 size_t len;
 u8 *pos;
 int res;

 len = sizeof(*hdr) + data_len;
 hdr = os_zalloc(len);
 if (hdr == ((void*)0)) {
  wpa_printf(MSG_INFO,
      "malloc() failed for wired_send_eapol(len=%lu)",
      (unsigned long) len);
  return -1;
 }

 os_memcpy(hdr->dest, drv->use_pae_group_addr ? pae_group_addr : addr,
    ETH_ALEN);
 os_memcpy(hdr->src, own_addr, ETH_ALEN);
 hdr->ethertype = htons(ETH_P_PAE);

 pos = (u8 *) (hdr + 1);
 os_memcpy(pos, data, data_len);

 res = send(drv->common.sock, (u8 *) hdr, len, 0);
 os_free(hdr);

 if (res < 0) {
  wpa_printf(MSG_ERROR,
      "wired_send_eapol - packet len: %lu - failed: send: %s",
      (unsigned long) len, strerror(errno));
 }

 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {scalar_t__ supp_oper_classes_len; int * supp_oper_classes; } ;
struct wpa_eapol_ie_parse {scalar_t__ supp_oper_classes_len; int supp_oper_classes; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int os_memcpy (int *,int ,scalar_t__) ;
 int * os_zalloc (scalar_t__) ;
 int wpa_hexdump (int ,char*,int *,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int copy_peer_supp_oper_classes(const struct wpa_eapol_ie_parse *kde,
           struct wpa_tdls_peer *peer)
{
 if (!kde->supp_oper_classes) {
  wpa_printf(MSG_DEBUG, "TDLS: No supported operating classes received");
  return 0;
 }

 if (!peer->supp_oper_classes ||
     peer->supp_oper_classes_len < kde->supp_oper_classes_len) {
  os_free(peer->supp_oper_classes);
  peer->supp_oper_classes = os_zalloc(kde->supp_oper_classes_len);
  if (peer->supp_oper_classes == ((void*)0))
   return -1;
 }

 peer->supp_oper_classes_len = kde->supp_oper_classes_len;
 os_memcpy(peer->supp_oper_classes, kde->supp_oper_classes,
    peer->supp_oper_classes_len);
 wpa_hexdump(MSG_DEBUG, "TDLS: Peer Supported Operating Classes",
      (u8 *) peer->supp_oper_classes,
      peer->supp_oper_classes_len);
 return 0;
}

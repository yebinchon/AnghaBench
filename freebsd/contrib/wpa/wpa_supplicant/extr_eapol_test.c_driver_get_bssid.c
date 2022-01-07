
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eapol_test_data {int id_req_sent; int wpa_s; scalar_t__ ctrl_iface; } ;


 int ETH_ALEN ;
 int eloop_register_timeout (int ,int ,int ,int ,int *) ;
 int os_memset (int*,int ,int ) ;
 int send_eap_request_identity ;

__attribute__((used)) static int driver_get_bssid(void *priv, u8 *bssid)
{
 struct eapol_test_data *e = priv;

 if (e->ctrl_iface && !e->id_req_sent) {
  eloop_register_timeout(0, 0, send_eap_request_identity,
           e->wpa_s, ((void*)0));
  e->id_req_sent = 1;
 }

 os_memset(bssid, 0, ETH_ALEN);
 bssid[5] = 1;
 return 0;
}

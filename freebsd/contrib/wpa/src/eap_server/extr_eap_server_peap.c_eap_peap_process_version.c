
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peap_data {int recv_version; int force_version; int peap_version; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int wpa_printf (int ,char*,int,int,...) ;

__attribute__((used)) static int eap_peap_process_version(struct eap_sm *sm, void *priv,
        int peer_version)
{
 struct eap_peap_data *data = priv;

 data->recv_version = peer_version;
 if (data->force_version >= 0 && peer_version != data->force_version) {
  wpa_printf(MSG_INFO, "EAP-PEAP: peer did not select the forced"
      " version (forced=%d peer=%d) - reject",
      data->force_version, peer_version);
  return -1;
 }
 if (peer_version < data->peap_version) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: peer ver=%d, own ver=%d; "
      "use version %d",
      peer_version, data->peap_version, peer_version);
  data->peap_version = peer_version;
 }

 return 0;
}

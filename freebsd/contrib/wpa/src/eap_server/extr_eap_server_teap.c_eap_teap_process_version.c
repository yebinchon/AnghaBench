
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_data {int teap_version; int peer_version; } ;
struct eap_sm {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int eap_teap_process_version(struct eap_sm *sm, void *priv,
        int peer_version)
{
 struct eap_teap_data *data = priv;

 if (peer_version < 1) {

  wpa_printf(MSG_INFO,
      "EAP-TEAP: Peer used unknown TEAP version %u",
      peer_version);
  return -1;
 }

 if (peer_version < data->teap_version) {
  wpa_printf(MSG_DEBUG, "EAP-TEAP: peer ver=%u, own ver=%u; "
      "use version %u",
      peer_version, data->teap_version, peer_version);
  data->teap_version = peer_version;
 }

 data->peer_version = peer_version;

 return 0;
}

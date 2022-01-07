
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ttls_data {int ttls_version; } ;
struct eap_sm {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int,int,int) ;

__attribute__((used)) static int eap_ttls_process_version(struct eap_sm *sm, void *priv,
        int peer_version)
{
 struct eap_ttls_data *data = priv;
 if (peer_version < data->ttls_version) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: peer ver=%d, own ver=%d; "
      "use version %d",
      peer_version, data->ttls_version, peer_version);
  data->ttls_version = peer_version;
 }

 return 0;
}

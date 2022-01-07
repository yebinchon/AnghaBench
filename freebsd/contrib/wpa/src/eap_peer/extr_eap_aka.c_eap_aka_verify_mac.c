
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int k_aut; } ;


 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int eap_sim_verify_mac (int ,struct wpabuf const*,int const*,int const*,size_t) ;
 int eap_sim_verify_mac_sha256 (int ,struct wpabuf const*,int const*,int const*,size_t) ;

__attribute__((used)) static int eap_aka_verify_mac(struct eap_aka_data *data,
         const struct wpabuf *req,
         const u8 *mac, const u8 *extra,
         size_t extra_len)
{
 if (data->eap_method == EAP_TYPE_AKA_PRIME)
  return eap_sim_verify_mac_sha256(data->k_aut, req, mac, extra,
       extra_len);
 return eap_sim_verify_mac(data->k_aut, req, mac, extra, extra_len);
}

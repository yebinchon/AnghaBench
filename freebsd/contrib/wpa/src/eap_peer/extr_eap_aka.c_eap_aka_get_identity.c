
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_aka_data {size_t reauth_id_len; size_t pseudonym_len; int const* pseudonym; int const* reauth_id; } ;



__attribute__((used)) static const u8 * eap_aka_get_identity(struct eap_sm *sm, void *priv,
           size_t *len)
{
 struct eap_aka_data *data = priv;

 if (data->reauth_id) {
  *len = data->reauth_id_len;
  return data->reauth_id;
 }

 if (data->pseudonym) {
  *len = data->pseudonym_len;
  return data->pseudonym;
 }

 return ((void*)0);
}

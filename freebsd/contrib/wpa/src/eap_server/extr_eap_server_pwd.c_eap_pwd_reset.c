
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct eap_pwd_data {int id_peer_len; int id_server_len; int password_len; int salt_len; int outbuf; int inbuf; TYPE_1__* grp; struct eap_pwd_data* salt; struct eap_pwd_data* password; struct eap_pwd_data* id_server; struct eap_pwd_data* id_peer; int peer_element; int my_element; int k; int my_scalar; int peer_scalar; int private_value; } ;
struct TYPE_2__ {int pwe; int group; } ;


 int bin_clear_free (struct eap_pwd_data*,int) ;
 int crypto_bignum_deinit (int ,int) ;
 int crypto_ec_deinit (int ) ;
 int crypto_ec_point_deinit (int ,int) ;
 int os_free (TYPE_1__*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_pwd_reset(struct eap_sm *sm, void *priv)
{
 struct eap_pwd_data *data = priv;

 crypto_bignum_deinit(data->private_value, 1);
 crypto_bignum_deinit(data->peer_scalar, 1);
 crypto_bignum_deinit(data->my_scalar, 1);
 crypto_bignum_deinit(data->k, 1);
 crypto_ec_point_deinit(data->my_element, 1);
 crypto_ec_point_deinit(data->peer_element, 1);
 bin_clear_free(data->id_peer, data->id_peer_len);
 bin_clear_free(data->id_server, data->id_server_len);
 bin_clear_free(data->password, data->password_len);
 bin_clear_free(data->salt, data->salt_len);
 if (data->grp) {
  crypto_ec_deinit(data->grp->group);
  crypto_ec_point_deinit(data->grp->pwe, 1);
  os_free(data->grp);
 }
 wpabuf_free(data->inbuf);
 wpabuf_free(data->outbuf);
 bin_clear_free(data, sizeof(*data));
}

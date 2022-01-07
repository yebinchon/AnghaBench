
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_initiator_data {int key_pad; int r_sign_msg; int i_sign_msg; int shared_secret; int IDr; int IDi; int i_dh_private; int r_dh_public; int keys; } ;


 int ikev2_free_keys (int *) ;
 int os_free (int ) ;
 int wpabuf_free (int ) ;

void ikev2_initiator_deinit(struct ikev2_initiator_data *data)
{
 ikev2_free_keys(&data->keys);
 wpabuf_free(data->r_dh_public);
 wpabuf_free(data->i_dh_private);
 os_free(data->IDi);
 os_free(data->IDr);
 os_free(data->shared_secret);
 wpabuf_free(data->i_sign_msg);
 wpabuf_free(data->r_sign_msg);
 os_free(data->key_pad);
}

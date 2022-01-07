
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_ikev2_data {int ikev2; int out_buf; int in_buf; } ;


 int bin_clear_free (struct eap_ikev2_data*,int) ;
 int ikev2_responder_deinit (int *) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_ikev2_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_ikev2_data *data = priv;
 wpabuf_free(data->in_buf);
 wpabuf_free(data->out_buf);
 ikev2_responder_deinit(&data->ikev2);
 bin_clear_free(data, sizeof(*data));
}

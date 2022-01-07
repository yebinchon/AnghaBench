
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tnc_data {int tncc; int out_buf; int in_buf; } ;
struct eap_sm {int dummy; } ;


 int os_free (struct eap_tnc_data*) ;
 int tncc_deinit (int ) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_tnc_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_tnc_data *data = priv;

 wpabuf_free(data->in_buf);
 wpabuf_free(data->out_buf);
 tncc_deinit(data->tncc);
 os_free(data);
}

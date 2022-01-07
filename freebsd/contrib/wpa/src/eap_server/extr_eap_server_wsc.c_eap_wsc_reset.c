
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_wsc_data {int wps; int out_buf; int in_buf; } ;
struct eap_sm {int dummy; } ;


 int eap_wsc_ext_reg_timeout ;
 int eloop_cancel_timeout (int ,struct eap_sm*,struct eap_wsc_data*) ;
 int os_free (struct eap_wsc_data*) ;
 int wpabuf_free (int ) ;
 int wps_deinit (int ) ;

__attribute__((used)) static void eap_wsc_reset(struct eap_sm *sm, void *priv)
{
 struct eap_wsc_data *data = priv;
 eloop_cancel_timeout(eap_wsc_ext_reg_timeout, sm, data);
 wpabuf_free(data->in_buf);
 wpabuf_free(data->out_buf);
 wps_deinit(data->wps);
 os_free(data);
}

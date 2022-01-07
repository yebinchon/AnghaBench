
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_wsc_data {TYPE_1__* wps_ctx; int wps; int out_buf; int in_buf; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {struct eap_wsc_data* network_key; } ;


 int os_free (struct eap_wsc_data*) ;
 int wpabuf_free (int ) ;
 int wps_deinit (int ) ;

__attribute__((used)) static void eap_wsc_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_wsc_data *data = priv;
 wpabuf_free(data->in_buf);
 wpabuf_free(data->out_buf);
 wps_deinit(data->wps);
 os_free(data->wps_ctx->network_key);
 data->wps_ctx->network_key = ((void*)0);
 os_free(data);
}

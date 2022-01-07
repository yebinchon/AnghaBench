
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gas_server_response {int resp; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct gas_server_response*,int *) ;
 int gas_server_response_timeout ;
 int os_free (struct gas_server_response*) ;
 int wpa_printf (int ,char*,struct gas_server_response*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void gas_server_free_response(struct gas_server_response *response)
{
 if (!response)
  return;
 wpa_printf(MSG_DEBUG, "DPP: Free GAS response @%p", response);
 eloop_cancel_timeout(gas_server_response_timeout, response, ((void*)0));
 wpabuf_free(response->resp);
 os_free(response);
}

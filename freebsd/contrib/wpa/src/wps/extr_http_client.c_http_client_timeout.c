
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_client {int cb_ctx; int (* cb ) (int ,struct http_client*,int ) ;} ;


 int HTTP_CLIENT_TIMEOUT ;
 int MSG_DEBUG ;
 int stub1 (int ,struct http_client*,int ) ;
 int wpa_printf (int ,char*,struct http_client*) ;

__attribute__((used)) static void http_client_timeout(void *eloop_data, void *user_ctx)
{
 struct http_client *c = eloop_data;
 wpa_printf(MSG_DEBUG, "HTTP: Timeout (c=%p)", c);
 c->cb(c->cb_ctx, c, HTTP_CLIENT_TIMEOUT);
}

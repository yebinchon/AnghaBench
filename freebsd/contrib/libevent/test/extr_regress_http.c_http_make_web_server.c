
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_server {scalar_t__ ssl; int port; int http; } ;
typedef int evutil_socket_t ;


 int HTTP_BIND_SSL ;
 int http_make_web_server_base ;
 int http_setup (int *,int ,int ) ;

__attribute__((used)) static void
http_make_web_server(evutil_socket_t fd, short what, void *arg)
{
 struct http_server *hs = (struct http_server *)arg;
 hs->http = http_setup(&hs->port, http_make_web_server_base, hs->ssl ? HTTP_BIND_SSL : 0);
}

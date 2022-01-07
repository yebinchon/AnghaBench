
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef int ev_uint16_t ;


 int http ;
 int http_make_web_server_base ;
 int http_setup (int *,int ,int ) ;

__attribute__((used)) static void
http_make_web_server(evutil_socket_t fd, short what, void *arg)
{
 ev_uint16_t port = *(ev_uint16_t*)arg;
 http = http_setup(&port, http_make_web_server_base, 0);
}

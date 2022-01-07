
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_server {int port; } ;



int http_server_get_port(struct http_server *srv)
{
 return srv->port;
}

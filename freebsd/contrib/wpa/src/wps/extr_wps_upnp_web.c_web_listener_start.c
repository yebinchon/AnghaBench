
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int * web_srv; int web_port; int ip_addr; } ;
struct in_addr {int s_addr; } ;


 int http_server_get_port (int *) ;
 int * http_server_init (struct in_addr*,int,int ,struct upnp_wps_device_sm*) ;
 int web_connection_check_data ;
 int web_listener_stop (struct upnp_wps_device_sm*) ;

int web_listener_start(struct upnp_wps_device_sm *sm)
{
 struct in_addr addr;
 addr.s_addr = sm->ip_addr;
 sm->web_srv = http_server_init(&addr, -1, web_connection_check_data,
           sm);
 if (sm->web_srv == ((void*)0)) {
  web_listener_stop(sm);
  return -1;
 }
 sm->web_port = http_server_get_port(sm->web_srv);

 return 0;
}

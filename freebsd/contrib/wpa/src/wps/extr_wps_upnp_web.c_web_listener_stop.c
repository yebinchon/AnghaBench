
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int * web_srv; } ;


 int http_server_deinit (int *) ;

void web_listener_stop(struct upnp_wps_device_sm *sm)
{
 http_server_deinit(sm->web_srv);
 sm->web_srv = ((void*)0);
}

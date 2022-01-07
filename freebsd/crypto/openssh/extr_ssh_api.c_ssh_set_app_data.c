
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {void* app_data; } ;



void
ssh_set_app_data(struct ssh *ssh, void *app_data)
{
 ssh->app_data = app_data;
}

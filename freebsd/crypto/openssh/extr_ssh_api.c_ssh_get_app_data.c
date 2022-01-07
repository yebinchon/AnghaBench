
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {void* app_data; } ;



void *
ssh_get_app_data(struct ssh *ssh)
{
 return ssh->app_data;
}

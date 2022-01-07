
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* sockets; } ;
typedef TYPE_1__ ifconfig_handle_t ;


 int AF_MAX ;
 TYPE_1__* calloc (int,int) ;

ifconfig_handle_t *
ifconfig_open(void)
{
 ifconfig_handle_t *h;

 h = calloc(1, sizeof(*h));

 if (h == ((void*)0)) {
  return (((void*)0));
 }
 for (int i = 0; i <= AF_MAX; i++) {
  h->sockets[i] = -1;
 }

 return (h);
}

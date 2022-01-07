
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* sockets; int ifap; } ;
typedef TYPE_1__ ifconfig_handle_t ;


 int AF_MAX ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int freeifaddrs (int ) ;

void
ifconfig_close(ifconfig_handle_t *h)
{

 for (int i = 0; i <= AF_MAX; i++) {
  if (h->sockets[i] != -1) {
   (void)close(h->sockets[i]);
  }
 }
 freeifaddrs(h->ifap);
 free(h);
}

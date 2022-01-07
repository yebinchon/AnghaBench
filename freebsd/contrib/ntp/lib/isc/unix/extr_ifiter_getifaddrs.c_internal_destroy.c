
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ifaddrs; int * proc; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int fclose (int *) ;
 int freeifaddrs (int *) ;

__attribute__((used)) static void
internal_destroy(isc_interfaceiter_t *iter) {


 if (iter->proc != ((void*)0))
  fclose(iter->proc);
 iter->proc = ((void*)0);

 if (iter->ifaddrs)
  freeifaddrs(iter->ifaddrs);
 iter->ifaddrs = ((void*)0);
}

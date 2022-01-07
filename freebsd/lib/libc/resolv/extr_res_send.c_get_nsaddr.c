
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef TYPE_3__* res_state ;
struct TYPE_10__ {TYPE_1__* ext; } ;
struct TYPE_9__ {TYPE_2__* nsaddr_list; } ;
struct TYPE_8__ {int sin_family; } ;
struct TYPE_7__ {int * nsaddrs; } ;


 TYPE_5__ EXT (TYPE_3__*) ;

__attribute__((used)) static struct sockaddr *
get_nsaddr(res_state statp, size_t n)
{

 if (!statp->nsaddr_list[n].sin_family && EXT(statp).ext) {





  return (struct sockaddr *)(void *)&EXT(statp).ext->nsaddrs[n];
 } else {





  return (struct sockaddr *)(void *)&statp->nsaddr_list[n];
 }
}

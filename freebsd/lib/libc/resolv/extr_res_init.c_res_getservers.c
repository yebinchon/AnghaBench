
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int sin_family; } ;
union res_sockaddr_union {TYPE_7__ sin; TYPE_7__ sin6; } ;
typedef int u_int16_t ;
typedef TYPE_5__* res_state ;
struct TYPE_9__ {int sin_family; } ;
struct TYPE_15__ {int sin_family; TYPE_1__ sin; } ;
struct TYPE_11__ {TYPE_2__* ext; } ;
struct TYPE_12__ {TYPE_3__ _ext; } ;
struct TYPE_13__ {int nscount; TYPE_8__* nsaddr_list; TYPE_4__ _u; } ;
struct TYPE_10__ {TYPE_8__* nsaddrs; } ;




 int memcpy (TYPE_7__*,TYPE_8__*,size_t) ;

int
res_getservers(res_state statp, union res_sockaddr_union *set, int cnt) {
 int i;
 size_t size;
 u_int16_t family;

 for (i = 0; i < statp->nscount && i < cnt; i++) {
  if (statp->_u._ext.ext)
   family = statp->_u._ext.ext->nsaddrs[i].sin.sin_family;
  else
   family = statp->nsaddr_list[i].sin_family;

  switch (family) {
  case 129:
   size = sizeof(set->sin);
   if (statp->_u._ext.ext)
    memcpy(&set->sin,
           &statp->_u._ext.ext->nsaddrs[i],
           size);
   else
    memcpy(&set->sin, &statp->nsaddr_list[i],
           size);
   break;
  default:
   set->sin.sin_family = 0;
   break;
  }
  set++;
 }
 return (statp->nscount);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int sin_family; } ;
union res_sockaddr_union {TYPE_8__ sin6; TYPE_8__ sin; } ;
typedef TYPE_4__* res_state ;
struct TYPE_13__ {int sin_family; } ;
struct TYPE_10__ {TYPE_1__* ext; scalar_t__ nscount; } ;
struct TYPE_11__ {TYPE_2__ _ext; } ;
struct TYPE_12__ {int nscount; TYPE_7__* nsaddr_list; TYPE_3__ _u; } ;
struct TYPE_9__ {TYPE_7__* nsaddrs; } ;




 int MAXNS ;
 int memcpy (TYPE_7__*,TYPE_8__*,size_t) ;
 int res_nclose (TYPE_4__*) ;

void
res_setservers(res_state statp, const union res_sockaddr_union *set, int cnt) {
 int i, nserv;
 size_t size;


 res_nclose(statp);


 statp->_u._ext.nscount = 0;

 nserv = 0;
 for (i = 0; i < cnt && nserv < MAXNS; i++) {
  switch (set->sin.sin_family) {
  case 129:
   size = sizeof(set->sin);
   if (statp->_u._ext.ext)
    memcpy(&statp->_u._ext.ext->nsaddrs[nserv],
     &set->sin, size);
   if (size <= sizeof(statp->nsaddr_list[nserv]))
    memcpy(&statp->nsaddr_list[nserv],
     &set->sin, size);
   else
    statp->nsaddr_list[nserv].sin_family = 0;
   nserv++;
   break;
  default:
   break;
  }
  set++;
 }
 statp->nscount = nserv;

}

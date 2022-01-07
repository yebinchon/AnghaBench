
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct hostent {scalar_t__ h_addrtype; int h_length; int ** h_addr_list; } ;
typedef TYPE_6__* res_state ;
struct TYPE_10__ {TYPE_2__* ext; } ;
struct TYPE_11__ {TYPE_3__ _ext; } ;
struct TYPE_13__ {int nsort; TYPE_5__* sort_list; TYPE_4__ _u; } ;
struct TYPE_12__ {int mask; int addr; } ;
struct TYPE_9__ {TYPE_1__* sort_list; } ;
struct TYPE_8__ {scalar_t__ af; int mask; int addr; } ;


 int MAXADDRS ;

__attribute__((used)) static struct hostent *
_hpsort(struct hostent *hp, res_state statp)
{
 int i, j, n;
 u_char *ap, *sp, *mp, **pp;
 char t;
 char order[MAXADDRS];
 int nsort = statp->nsort;

 if (hp == ((void*)0) || hp->h_addr_list[1] == ((void*)0) || nsort == 0)
  return hp;
 for (i = 0; (ap = (u_char *)hp->h_addr_list[i]); i++) {
  for (j = 0; j < nsort; j++) {







   sp = (u_char *)&statp->sort_list[j].addr;
   mp = (u_char *)&statp->sort_list[j].mask;

   for (n = 0; n < hp->h_length; n++) {
    if ((ap[n] & mp[n]) != sp[n])
     break;
   }
   if (n == hp->h_length)
    break;
  }
  order[i] = j;
 }
 n = i;
 pp = (u_char **)hp->h_addr_list;
 for (i = 0; i < n - 1; i++) {
  for (j = i + 1; j < n; j++) {
   if (order[i] > order[j]) {
    ap = pp[i];
    pp[i] = pp[j];
    pp[j] = ap;
    t = order[i];
    order[i] = order[j];
    order[j] = t;
   }
  }
 }
 return hp;
}

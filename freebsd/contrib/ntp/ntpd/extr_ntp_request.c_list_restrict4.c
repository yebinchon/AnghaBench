
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct info_restrict {void* mflags; void* rflags; void* count; void* mask; scalar_t__ v6_flag; void* addr; } ;
struct TYPE_7__ {int mask; int addr; } ;
struct TYPE_8__ {TYPE_1__ v4; } ;
struct TYPE_9__ {int mflags; int rflags; int count; TYPE_2__ u; struct TYPE_9__* link; } ;
typedef TYPE_3__ restrict_u ;
typedef int RestrictStackT ;


 scalar_t__ client_v6_capable ;
 int flushRestrictionStack (int **) ;
 void* htonl (int ) ;
 void* htons (int ) ;
 scalar_t__ more_pkt () ;
 scalar_t__ popRestriction (int **,TYPE_3__ const**) ;
 int pushRestriction (int **,TYPE_3__ const*) ;

__attribute__((used)) static void
list_restrict4(
 const restrict_u * res,
 struct info_restrict ** ppir
 )
{
 RestrictStackT * rpad;
 struct info_restrict * pir;

 pir = *ppir;
 for (rpad = ((void*)0); res; res = res->link)
  if (!pushRestriction(&rpad, res))
   break;

 while (pir && popRestriction(&rpad, &res)) {
  pir->addr = htonl(res->u.v4.addr);
  if (client_v6_capable)
   pir->v6_flag = 0;
  pir->mask = htonl(res->u.v4.mask);
  pir->count = htonl(res->count);
  pir->rflags = htons(res->rflags);
  pir->mflags = htons(res->mflags);
  pir = (struct info_restrict *)more_pkt();
 }
 flushRestrictionStack(&rpad);
 *ppir = pir;
}

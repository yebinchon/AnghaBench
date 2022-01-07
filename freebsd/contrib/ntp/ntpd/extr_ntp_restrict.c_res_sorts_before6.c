
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mask; int addr; } ;
struct TYPE_7__ {TYPE_1__ v6; } ;
struct TYPE_8__ {scalar_t__ mflags; TYPE_2__ u; } ;
typedef TYPE_3__ restrict_u ;


 int ADDR6_CMP (int *,int *) ;

__attribute__((used)) static int
res_sorts_before6(
 restrict_u *r1,
 restrict_u *r2
 )
{
 int r1_before_r2;
 int cmp;

 cmp = ADDR6_CMP(&r1->u.v6.addr, &r2->u.v6.addr);
 if (cmp > 0)
  r1_before_r2 = 1;
 else if (cmp < 0)
  r1_before_r2 = 0;
 else {
  cmp = ADDR6_CMP(&r1->u.v6.mask, &r2->u.v6.mask);
  if (cmp > 0)
   r1_before_r2 = 1;
  else if (cmp < 0)
   r1_before_r2 = 0;
  else if (r1->mflags > r2->mflags)
   r1_before_r2 = 1;
  else
   r1_before_r2 = 0;
 }

 return r1_before_r2;
}

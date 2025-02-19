
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_7__ {TYPE_1__ v4; } ;
struct TYPE_8__ {scalar_t__ mflags; TYPE_2__ u; } ;
typedef TYPE_3__ restrict_u ;



__attribute__((used)) static int
res_sorts_before4(
 restrict_u *r1,
 restrict_u *r2
 )
{
 int r1_before_r2;

 if (r1->u.v4.addr > r2->u.v4.addr)
  r1_before_r2 = 1;
 else if (r1->u.v4.addr < r2->u.v4.addr)
  r1_before_r2 = 0;
 else if (r1->u.v4.mask > r2->u.v4.mask)
  r1_before_r2 = 1;
 else if (r1->u.v4.mask < r2->u.v4.mask)
  r1_before_r2 = 0;
 else if (r1->mflags > r2->mflags)
  r1_before_r2 = 1;
 else
  r1_before_r2 = 0;

 return r1_before_r2;
}

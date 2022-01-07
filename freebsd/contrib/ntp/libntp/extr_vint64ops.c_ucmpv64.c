
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hi; scalar_t__ lo; } ;
struct TYPE_6__ {scalar_t__ Q_s; TYPE_1__ D_s; } ;
typedef TYPE_2__ vint64 ;



int
ucmpv64(
 const vint64 * lhs,
 const vint64 * rhs
 )
{
 int res;





 res = (lhs->D_s.hi > rhs->D_s.hi)
     - (lhs->D_s.hi < rhs->D_s.hi);
 if ( ! res )
  res = (lhs->D_s.lo > rhs->D_s.lo)
      - (lhs->D_s.lo < rhs->D_s.lo);

 return res;
}

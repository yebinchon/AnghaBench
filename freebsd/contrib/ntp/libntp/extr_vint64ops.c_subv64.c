
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lo; int hi; } ;
struct TYPE_7__ {TYPE_1__ D_s; scalar_t__ Q_s; } ;
typedef TYPE_2__ vint64 ;


 int M_SUB (int ,int ,int ,int ) ;

vint64
subv64(
 const vint64 *lhs,
 const vint64 *rhs
 )
{
 vint64 res;




 res = *lhs;
 M_SUB(res.D_s.hi, res.D_s.lo, rhs->D_s.hi, rhs->D_s.lo);

 return res;
}

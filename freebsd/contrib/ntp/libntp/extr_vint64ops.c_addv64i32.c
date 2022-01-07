
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lo; int hi; } ;
struct TYPE_6__ {TYPE_1__ D_s; int q_s; } ;
typedef TYPE_2__ vint64 ;
typedef scalar_t__ int32_t ;


 int M_ADD (int ,int ,int,scalar_t__) ;

vint64
addv64i32(
 const vint64 * lhs,
 int32_t rhs
 )
{
 vint64 res;

 res = *lhs;



 M_ADD(res.D_s.hi, res.D_s.lo, -(rhs < 0), rhs);

 return res;
}

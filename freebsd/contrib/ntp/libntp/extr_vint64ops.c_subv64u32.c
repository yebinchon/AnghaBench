
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lo; int hi; } ;
struct TYPE_6__ {TYPE_1__ D_s; int Q_s; } ;
typedef TYPE_2__ vint64 ;
typedef int uint32_t ;


 int M_SUB (int ,int ,int ,int ) ;

vint64
subv64u32(
 const vint64 * lhs,
 uint32_t rhs
 )
{
 vint64 res;

 res = *lhs;



 M_SUB(res.D_s.hi, res.D_s.lo, 0, rhs);

 return res;
}

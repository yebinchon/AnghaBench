
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lo; int hi; } ;
struct TYPE_6__ {int Q_s; TYPE_1__ D_s; int q_s; } ;
typedef TYPE_2__ vint64 ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int time_t ;


 scalar_t__ JAN_1970 ;
 int M_ADD (int ,scalar_t__,int ,scalar_t__) ;
 int M_SUB (int ,scalar_t__,int ,int) ;
 int const now () ;
 TYPE_2__ time_to_vint64 (int *) ;

vint64
ntpcal_ntp_to_ntp(
 uint32_t ntp,
 const time_t *pivot
 )
{
 vint64 res;
 time_t tmp;

 tmp = (pivot)
    ? *pivot
    : now();
 res = time_to_vint64(&tmp);
 M_SUB(res.D_s.hi, res.D_s.lo, 0, 0x80000000u);
 M_ADD(res.D_s.hi, res.D_s.lo, 0, (uint32_t)JAN_1970);
 ntp -= res.D_s.lo;
 M_ADD(res.D_s.hi, res.D_s.lo, 0, ntp);



 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* hi; void* lo; } ;
struct TYPE_5__ {int q_s; TYPE_1__ D_s; } ;
typedef TYPE_2__ vint64 ;
typedef void* uint32_t ;
typedef int time_t ;


 int M_NEG (void*,void*) ;

vint64
time_to_vint64(
 const time_t * ptt
 )
{
 vint64 res;
 time_t tt;

 tt = *ptt;



 res.D_s.hi = 0;
 if (tt < 0) {
  res.D_s.lo = (uint32_t)-tt;
  M_NEG(res.D_s.hi, res.D_s.lo);
 } else {
  res.D_s.lo = (uint32_t)tt;
 }
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lo; int hi; } ;
struct TYPE_5__ {int q_s; TYPE_1__ D_s; } ;
typedef TYPE_2__ vint64 ;
typedef int uint32_t ;
typedef int int32_t ;


 int M_ADD (int,int,int,int) ;
 int M_NEG (int,int) ;
 int SECSPERDAY ;

vint64
ntpcal_dayjoin(
 int32_t days,
 int32_t secs
 )
{
 vint64 res;
 uint32_t p1, p2;
 int isneg;





 isneg = (days < 0);
 if (isneg)
  days = -days;


 res.D_s.lo = (days & 0xFFFF) * 675u;
 res.D_s.hi = 0;
 p1 = (days >> 16) * 675u;
 p2 = p1 >> 16;
 p1 = p1 << 16;
 M_ADD(res.D_s.hi, res.D_s.lo, p2, p1);


 res.D_s.hi = (res.D_s.hi << 7) | (res.D_s.lo >> 25);
 res.D_s.lo = (res.D_s.lo << 7);


 if (isneg)
  M_NEG(res.D_s.hi, res.D_s.lo);


 p2 = 0;
 if (secs < 0) {
  p1 = (uint32_t)-secs;
  M_NEG(p2, p1);
 } else {
  p1 = (uint32_t)secs;
 }
 M_ADD(res.D_s.hi, res.D_s.lo, p2, p1);



 return res;
}

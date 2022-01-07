
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hi; int lo; } ;
struct TYPE_7__ {int hi; } ;
struct TYPE_9__ {scalar_t__ q_s; int Q_s; TYPE_2__ D_s; TYPE_1__ d_s; } ;
typedef TYPE_3__ vint64 ;
typedef int uint32_t ;
struct TYPE_10__ {int lo; int hi; } ;
typedef TYPE_4__ ntpcal_split ;


 int SECSPERDAY ;
 int int32_sflag (int ) ;
 int uint32_2cpl_to_int32 (int) ;

ntpcal_split
ntpcal_daysplit(
 const vint64 *ts
 )
{
 ntpcal_split res;
 uint32_t Q;
 uint32_t ah, al, sflag, A;




 sflag = int32_sflag(ts->d_s.hi);
 ah = sflag ^ ts->D_s.hi;
 al = sflag ^ ts->D_s.lo;
 A = ah >> 19;
 if (A >= 675)
  A = (A % 675u);






 A = (A << 19) | (ah & 0x0007FFFFu);
 A = (A << 3) | (al >> 29);
 Q = A / 675u;
 A = A % 675u;




 A = (A << 22) | ((al >> 7) & 0x003FFFFFu);
 Q = (Q << 22) | (A / 675u);
 Q ^= sflag;



 res.hi = uint32_2cpl_to_int32(Q);
 res.lo = ts->D_s.lo - Q * SECSPERDAY;

 return res;
}

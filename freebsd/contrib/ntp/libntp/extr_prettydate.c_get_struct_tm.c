
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hi; int lo; } ;
struct TYPE_5__ {scalar_t__ q_s; TYPE_1__ D_s; } ;
typedef TYPE_2__ vint64 ;
typedef int u_int32 ;
typedef scalar_t__ time_t ;
struct tm {scalar_t__ tm_year; } ;
typedef scalar_t__ int64 ;
typedef scalar_t__ int32 ;


 int INSIST (int ) ;
 scalar_t__ MAXFOLD ;
 scalar_t__ MINFOLD ;
 int M_ADD (int,int,int ,scalar_t__) ;
 scalar_t__ M_ISNEG (int,int) ;
 int M_SUB (int,int,int ,scalar_t__) ;
 scalar_t__ SOLAR_CYCLE_SECS ;
 scalar_t__ SOLAR_CYCLE_YEARS ;
 struct tm* gmtime (scalar_t__*) ;
 struct tm* localtime (scalar_t__*) ;
 struct tm* stub1 (scalar_t__*) ;

__attribute__((used)) static struct tm *
get_struct_tm(
 const vint64 *stamp,
 int local)
{
 struct tm *tm = ((void*)0);
 int32 folds = 0;
 time_t ts;
 u_int32 hi, lo;

 hi = stamp->D_s.hi;
 lo = stamp->D_s.lo;

 while ((hi && ~hi) || ((hi ^ lo) & 0x80000000u)) {
  if (M_ISNEG(hi, lo)) {
   if (--folds < MINFOLD)
    return ((void*)0);
   M_ADD(hi, lo, 0, SOLAR_CYCLE_SECS);
  } else {
   if (++folds > MAXFOLD)
    return ((void*)0);
   M_SUB(hi, lo, 0, SOLAR_CYCLE_SECS);
  }
 }
 ts = (int32)lo;
 while ((tm = (*(local ? localtime : gmtime))(&ts)) == ((void*)0))
  if (ts < 0) {
   if (--folds < MINFOLD)
    return ((void*)0);
   ts += SOLAR_CYCLE_SECS;
  } else if (ts >= (time_t)SOLAR_CYCLE_SECS) {
   if (++folds > MAXFOLD)
    return ((void*)0);
   ts -= SOLAR_CYCLE_SECS;
  } else
   return ((void*)0);


 INSIST(tm != ((void*)0));
 if (folds != 0) {
  tm->tm_year += folds * SOLAR_CYCLE_YEARS;
  if (tm->tm_year <= 0 || tm->tm_year >= 200)
   return ((void*)0);
 }

 return tm;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct ttinfo {size_t tt_isdst; size_t tt_abbrind; int tt_gmtoff; } ;
struct tm {scalar_t__ tm_year; size_t tm_isdst; int * TM_ZONE; } ;
struct state {scalar_t__ const* ats; int timecnt; int typecnt; int * chars; struct ttinfo* ttis; scalar_t__* types; scalar_t__ goahead; scalar_t__ goback; } ;
typedef scalar_t__ int_fast64_t ;


 scalar_t__ AVGSECSPERYEAR ;
 scalar_t__ YEARSPERREPEAT ;
 struct tm* gmtsub (scalar_t__ const* const,long const,struct tm* const) ;
 struct state* lclptr ;
 struct tm* timesub (scalar_t__ const*,int ,struct state*,struct tm* const) ;
 int ** tzname ;

__attribute__((used)) static struct tm *
localsub(const time_t *const timep, const long offset, struct tm *const tmp)
{
 struct state * sp;
 const struct ttinfo * ttisp;
 int i;
 struct tm * result;
 const time_t t = *timep;

 sp = lclptr;




 if ((sp->goback && t < sp->ats[0]) ||
  (sp->goahead && t > sp->ats[sp->timecnt - 1])) {
   time_t newt = t;
   register time_t seconds;
   register time_t tcycles;
   register int_fast64_t icycles;

   if (t < sp->ats[0])
    seconds = sp->ats[0] - t;
   else seconds = t - sp->ats[sp->timecnt - 1];
   --seconds;
   tcycles = seconds / YEARSPERREPEAT / AVGSECSPERYEAR;
   ++tcycles;
   icycles = tcycles;
   if (tcycles - icycles >= 1 || icycles - tcycles >= 1)
    return ((void*)0);
   seconds = icycles;
   seconds *= YEARSPERREPEAT;
   seconds *= AVGSECSPERYEAR;
   if (t < sp->ats[0])
    newt += seconds;
   else newt -= seconds;
   if (newt < sp->ats[0] ||
    newt > sp->ats[sp->timecnt - 1])
     return ((void*)0);
   result = localsub(&newt, offset, tmp);
   if (result == tmp) {
    register time_t newy;

    newy = tmp->tm_year;
    if (t < sp->ats[0])
     newy -= icycles * YEARSPERREPEAT;
    else newy += icycles * YEARSPERREPEAT;
    tmp->tm_year = newy;
    if (tmp->tm_year != newy)
     return ((void*)0);
   }
   return result;
 }
 if (sp->timecnt == 0 || t < sp->ats[0]) {
  i = 0;
  while (sp->ttis[i].tt_isdst)
   if (++i >= sp->typecnt) {
    i = 0;
    break;
   }
 } else {
  register int lo = 1;
  register int hi = sp->timecnt;

  while (lo < hi) {
   register int mid = (lo + hi) >> 1;

   if (t < sp->ats[mid])
    hi = mid;
   else lo = mid + 1;
  }
  i = (int) sp->types[lo - 1];
 }
 ttisp = &sp->ttis[i];






 result = timesub(&t, ttisp->tt_gmtoff, sp, tmp);
 tmp->tm_isdst = ttisp->tt_isdst;
 tzname[tmp->tm_isdst] = &sp->chars[ttisp->tt_abbrind];



 return result;
}

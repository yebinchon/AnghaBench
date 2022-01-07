
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENABLED_OPT (int ) ;
 int EX_OK ;
 int EX_SOFTWARE ;
 int SLEW ;
 int STEP ;
 scalar_t__ TRUE ;
 int adj_systime (double) ;
 scalar_t__ fabs (double) ;
 int step_systime (double) ;
 scalar_t__ steplimit ;
 scalar_t__ time_adjusted ;

int
set_time(
 double offset
 )
{
 int rc;

 if (time_adjusted)
  return EX_OK;





 if (ENABLED_OPT(STEP) &&
     ( !ENABLED_OPT(SLEW)
      || (ENABLED_OPT(SLEW) && (fabs(offset) > steplimit))
     )) {
  rc = step_systime(offset);


  if (1 == rc)
   time_adjusted = TRUE;
  return (time_adjusted)
      ? EX_OK
      : 1;






 }

 if (ENABLED_OPT(SLEW)) {
  rc = adj_systime(offset);


  if (1 == rc)
   time_adjusted = TRUE;
  return (time_adjusted)
      ? EX_OK
      : 1;






 }

 return EX_SOFTWARE;
}

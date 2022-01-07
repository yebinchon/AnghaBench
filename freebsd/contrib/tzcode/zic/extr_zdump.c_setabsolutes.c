
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double time_t ;


 scalar_t__ DBL_MAX ;
 int EXIT_FAILURE ;
 scalar_t__ FLT_MAX ;
 char* _ (char*) ;
 double absolute_max_time ;
 double absolute_min_time ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
setabsolutes(void)
{
 if (0.5 == (time_t) 0.5) {



  if (sizeof (time_t) == sizeof (float)) {
   absolute_min_time = (time_t) -FLT_MAX;
   absolute_max_time = (time_t) FLT_MAX;
  } else if (sizeof (time_t) == sizeof (double)) {
   absolute_min_time = (time_t) -DBL_MAX;
   absolute_max_time = (time_t) DBL_MAX;
  } else {
   (void) fprintf(stderr,
_("%s: use of -v on system with floating time_t other than float or double\n"),
    progname);
   exit(EXIT_FAILURE);
  }
 } else if (0 > (time_t) -1) {



  time_t t = 0;
  time_t t1 = 1;

  while (t < t1) {
   t = t1;
   t1 = 2 * t1 + 1;
  }

  absolute_max_time = t;
  t = -t;
  absolute_min_time = t - 1;
  if (t < absolute_min_time)
   absolute_min_time = t;
 } else {



  absolute_min_time = 0;
  absolute_max_time = absolute_min_time - 1;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SmTestIndex ;
 int SmTestNumErrors ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

int
sm_test_end()
{
 (void) fprintf(stderr, "%d of %d tests completed successfully\n",
   SmTestIndex - SmTestNumErrors, SmTestIndex);
 if (SmTestNumErrors != 0)
  (void) fprintf(stderr, "*** %d error%s in test! ***\n",
    SmTestNumErrors,
    SmTestNumErrors > 1 ? "s" : "");

 return SmTestNumErrors;
}

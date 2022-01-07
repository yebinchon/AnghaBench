
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FOLDSTD ;
 int FSHDIAG ;
 int FSHIN ;
 int FSHOUT ;
 scalar_t__ OLDSTD ;
 scalar_t__ SHDIAG ;
 int SHIN ;
 scalar_t__ SHOUT ;
 int close_on_exec (scalar_t__,int) ;
 void* dcopy (int,int ) ;
 scalar_t__ didcch ;
 scalar_t__ didfds ;
 void* isatty (scalar_t__) ;
 void* isdiagatty ;
 void* isoutatty ;
 int nlsclose () ;
 int nlsinit () ;

void
initdesc(void)
{







    didfds = 0;
    (void) close_on_exec(SHIN = dcopy(0, FSHIN), 1);
    (void) close_on_exec(SHOUT = dcopy(1, FSHOUT), 1);
    (void) close_on_exec(SHDIAG = dcopy(2, FSHDIAG), 1);
    (void) close_on_exec(OLDSTD = dcopy(SHIN, FOLDSTD), 1);

    didcch = 0;

    if (SHDIAG >= 0)
 isdiagatty = isatty(SHDIAG);
    else
     isdiagatty = 0;
    if (SHDIAG >= 0)
 isoutatty = isatty(SHOUT);
    else
     isoutatty = 0;





}

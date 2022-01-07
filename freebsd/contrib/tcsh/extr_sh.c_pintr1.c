
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearDisp () ;
 int ClearLines () ;
 int Cookedmode () ;
 int ERR_INTR ;
 int ERR_NAME ;
 int ERR_SILENT ;
 scalar_t__ GettingInput ;
 scalar_t__ InsideCompletion ;
 int PastBottom () ;
 int dojobs (int ,int *) ;
 int doneinp ;
 int drainoline () ;
 scalar_t__ editing ;
 int endpwent () ;
 scalar_t__ evalvec ;
 scalar_t__ gointr ;
 int gotolab (scalar_t__) ;
 scalar_t__ intty ;
 int jobargv ;
 scalar_t__ pjobs ;
 int putraw (char) ;
 int reset () ;
 scalar_t__ setintr ;
 int stderror (int) ;
 int xputchar (char) ;

void
pintr1(int wantnl)
{
    if (setintr) {
 if (pjobs) {
     pjobs = 0;
     xputchar('\n');
     dojobs(jobargv, ((void*)0));
     stderror(ERR_NAME | ERR_INTR);
 }
    }

    {
 if (InsideCompletion)
     stderror(ERR_SILENT);
    }

    {
 (void) Cookedmode();
 GettingInput = 0;
 if (evalvec)
     doneinp = 1;
    }
    drainoline();
    if (gointr) {
 gotolab(gointr);
 reset();
    }
    else if (intty && wantnl) {
 if (editing) {





     PastBottom();
     ClearLines();
     ClearDisp();
 }
 else {

     (void) putraw('\r');
     (void) putraw('\n');
 }
    }
    stderror(ERR_SILENT);
}

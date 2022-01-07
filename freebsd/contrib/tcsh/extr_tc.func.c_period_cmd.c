
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int Char ;


 int CGETS (int,int,char*) ;
 int * STRNULL ;
 int * STRperiodic ;
 int STRtperiod ;
 int * STRunalias ;
 scalar_t__ adrof1 (int *,int *) ;
 int aliases ;
 int aliasrun (int,int *,int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int getn (int *) ;
 int periodic_active ;
 int pintr_disabled ;
 int t_period ;
 int time (int*) ;
 int * varval (int ) ;
 scalar_t__ whyles ;
 int xprintf (char*,int ) ;

void
period_cmd(void)
{
    Char *vp;
    time_t t, interval;

    if (whyles)
 return;
    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);
    if (periodic_active) {
 aliasrun(2, STRunalias, STRperiodic);
 xprintf("%s", CGETS(22, 6, "Faulty alias 'periodic' removed.\n"));
 goto leave;
    }
    periodic_active = 1;
    if (!whyles && adrof1(STRperiodic, &aliases)) {
 vp = varval(STRtperiod);
 if (vp == STRNULL) {
     aliasrun(1, STRperiodic, ((void*)0));
     goto leave;
 }
 interval = getn(vp);
 (void) time(&t);
 if (t - t_period >= interval * 60) {
     t_period = t;
     aliasrun(1, STRperiodic, ((void*)0));
 }
    }
leave:
    periodic_active = 0;
    cleanup_until(&pintr_disabled);
}

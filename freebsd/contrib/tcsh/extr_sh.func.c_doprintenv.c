
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int STR1 ;
 int ** STR_environ ;
 int STRstatus ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 int cleanup_push (int*,int ) ;
 int cleanup_until (int*) ;
 int output_raw ;
 int output_raw_restore ;
 int pintr_push_enable (int*) ;
 int setcopy (int ,int ,int ) ;
 scalar_t__ setintr ;
 int * tgetenv (int *) ;
 int xlate_cr ;
 int xlate_cr_cleanup ;
 int xprintf (char*,int *) ;

void
doprintenv(Char **v, struct command *c)
{
    Char *e;

    USE(c);
    v++;
    if (*v == 0) {
 Char **ep;

 xlate_cr = 1;
 cleanup_push(&xlate_cr, xlate_cr_cleanup);
 for (ep = STR_environ; *ep; ep++) {
     if (setintr) {
  int old_pintr_disabled;

  pintr_push_enable(&old_pintr_disabled);
  cleanup_until(&old_pintr_disabled);
     }
     xprintf("%S\n", *ep);
 }
 cleanup_until(&xlate_cr);
    }
    else if ((e = tgetenv(*v)) != ((void*)0)) {
 int old_output_raw;

 old_output_raw = output_raw;
 output_raw = 1;
 cleanup_push(&old_output_raw, output_raw_restore);
 xprintf("%S\n", e);
 cleanup_until(&old_output_raw);
    }
    else
 setcopy(STRstatus, STR1, VAR_READWRITE);
}

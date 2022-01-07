
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sl_cur; } ;


 int argbase ;
 int argbuf ;
 int cursor_argc ;
 scalar_t__ cursor_argo ;
 int * cursor_pos ;
 int ftp_sl_add (TYPE_1__*,char*) ;
 int * line ;
 TYPE_1__* marg_sl ;
 int margc ;
 int * margv ;
 scalar_t__ slrflag ;
 char* slurpstring () ;
 int * stringbase ;
 scalar_t__ strlen (int ) ;

void
makeargv(void)
{
 char *argp;

 stringbase = line;
 argbase = argbuf;
 slrflag = 0;
 marg_sl->sl_cur = 0;
 for (margc = 0; ; margc++) {
  argp = slurpstring();
  ftp_sl_add(marg_sl, argp);
  if (argp == ((void*)0))
   break;
 }

 if (cursor_pos == line) {
  cursor_argc = 0;
  cursor_argo = 0;
 } else if (cursor_pos != ((void*)0)) {
  cursor_argc = margc;
  cursor_argo = strlen(margv[margc-1]);
 }

}

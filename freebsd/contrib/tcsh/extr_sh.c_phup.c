
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int p_flags; scalar_t__ p_jobid; struct process* p_friends; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;


 int PFOREGND ;
 int PHUP ;
 int SIGCONT ;
 int SIGHUP ;
 int STRhangup ;
 int STRhome ;
 int STRlogout ;
 int STRsldtlogout ;
 int VAR_READWRITE ;
 int _PATH_DOTLOGOUT ;
 scalar_t__ adrof (int ) ;
 int killpg (scalar_t__,int ) ;
 scalar_t__ loginsh ;
 TYPE_1__ proclist ;
 int record () ;
 int setcopy (int ,int ,int ) ;
 scalar_t__ shpgrp ;
 int srccat (int ,int ) ;
 int srcfile (int ,int ,int ,int *) ;
 int varval (int ) ;
 int xexit (int ) ;

void
phup(void)
{
    if (loginsh) {
 setcopy(STRlogout, STRhangup, VAR_READWRITE);



 if (adrof(STRhome))
     (void) srccat(varval(STRhome), STRsldtlogout);
    }

    record();
    xexit(SIGHUP);
}

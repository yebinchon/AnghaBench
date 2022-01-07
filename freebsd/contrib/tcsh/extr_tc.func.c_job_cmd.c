
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int dummy; } ;
typedef int Char ;


 int CGETS (int,int,char*) ;
 int * STRjobcmd ;
 int * STRunalias ;
 scalar_t__ adrof1 (int *,int *) ;
 int aliases ;
 int aliasrun (int,int *,int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int jobcmd_active ;
 struct process* pcurrjob ;
 int pintr_disabled ;
 scalar_t__ whyles ;
 int xprintf (char*,int ) ;

void
job_cmd(Char *args)
{
    if (whyles)
 return;
    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);
    if (jobcmd_active) {
 aliasrun(2, STRunalias, STRjobcmd);
 xprintf("%s", CGETS(22, 14, "Faulty alias 'jobcmd' removed.\n"));
 goto leave;
    }
    jobcmd_active = 1;
    if (!whyles && adrof1(STRjobcmd, &aliases)) {
 struct process *pp = pcurrjob;
 aliasrun(2, STRjobcmd, args);
 pcurrjob = pp;
    }
leave:
    jobcmd_active = 0;
    cleanup_until(&pintr_disabled);
}

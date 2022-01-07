
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 int * STRcwdcmd ;
 int * STRunalias ;
 scalar_t__ adrof1 (int *,int *) ;
 int aliases ;
 int aliasrun (int,int *,int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int cwdcmd_active ;
 int disabled_cleanup ;
 int pintr_disabled ;
 int whyles ;
 int xprintf (char*,int ) ;

void
cwd_cmd(void)
{
    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);
    if (cwdcmd_active) {
 aliasrun(2, STRunalias, STRcwdcmd);
 xprintf("%s", CGETS(22, 4, "Faulty alias 'cwdcmd' removed.\n"));
 goto leave;
    }
    cwdcmd_active = 1;
    if (!whyles && adrof1(STRcwdcmd, &aliases))
 aliasrun(1, STRcwdcmd, ((void*)0));
leave:
    cwdcmd_active = 0;
    cleanup_until(&pintr_disabled);
}

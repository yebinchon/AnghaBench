
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 int * STRbeepcmd ;
 int * STRunalias ;
 scalar_t__ adrof1 (int *,int *) ;
 int aliases ;
 int aliasrun (int,int *,int *) ;
 int beepcmd_active ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int pintr_disabled ;
 int whyles ;
 int xprintf (char*,int ) ;

void
beep_cmd(void)
{
    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);
    if (beepcmd_active) {
 aliasrun(2, STRunalias, STRbeepcmd);
 xprintf("%s", CGETS(22, 5, "Faulty alias 'beepcmd' removed.\n"));
 goto leave;
    }
    beepcmd_active = 1;
    if (!whyles && adrof1(STRbeepcmd, &aliases))
 aliasrun(1, STRbeepcmd, ((void*)0));
leave:
    beepcmd_active = 0;
    cleanup_until(&pintr_disabled);
}

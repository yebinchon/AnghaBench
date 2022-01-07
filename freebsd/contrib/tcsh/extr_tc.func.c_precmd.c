
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 int * STRprecmd ;
 int * STRunalias ;
 scalar_t__ adrof1 (int *,int *) ;
 int aliases ;
 int aliasrun (int,int *,int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int pintr_disabled ;
 int precmd_active ;
 int whyles ;
 int xprintf (char*,int ) ;

void
precmd(void)
{
    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);
    if (precmd_active) {
 aliasrun(2, STRunalias, STRprecmd);
 xprintf("%s", CGETS(22, 3, "Faulty alias 'precmd' removed.\n"));
 goto leave;
    }
    precmd_active = 1;
    if (!whyles && adrof1(STRprecmd, &aliases))
 aliasrun(1, STRprecmd, ((void*)0));
leave:
    precmd_active = 0;
    cleanup_until(&pintr_disabled);
}

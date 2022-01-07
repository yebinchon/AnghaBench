
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 int * STRpostcmd ;
 int * STRunalias ;
 scalar_t__ adrof1 (int *,int *) ;
 int aliases ;
 int aliasrun (int,int *,int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int pintr_disabled ;
 int postcmd_active ;
 int whyles ;
 int xprintf (char*,int ) ;

void
postcmd(void)
{
    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);
    if (postcmd_active) {
 aliasrun(2, STRunalias, STRpostcmd);
 xprintf("%s", CGETS(22, 3, "Faulty alias 'postcmd' removed.\n"));
 goto leave;
    }
    postcmd_active = 1;
    if (!whyles && adrof1(STRpostcmd, &aliases))
 aliasrun(1, STRpostcmd, ((void*)0));
leave:
    postcmd_active = 0;
    cleanup_until(&pintr_disabled);
}

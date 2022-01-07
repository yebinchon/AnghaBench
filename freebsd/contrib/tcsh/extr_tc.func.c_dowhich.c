
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int STR1 ;
 int STRstatus ;
 int TRUE ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 int cmd_expand (int *,int *) ;
 int setcopy (int ,int ,int ) ;

void
dowhich(Char **v, struct command *c)
{
    int rv = TRUE;
    USE(c);







    while (*++v)
 rv &= cmd_expand(*v, ((void*)0));

    if (!rv)
 setcopy(STRstatus, STR1, VAR_READWRITE);
}

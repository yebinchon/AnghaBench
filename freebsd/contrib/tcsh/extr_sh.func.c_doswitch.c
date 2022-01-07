
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef char Char ;


 int ERR_SYNTAX ;
 int G_ERROR ;
 char* STRNULL ;
 int TC_SWITCH ;
 int USE (struct command*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 char* globone (char*,int ) ;
 int noexec ;
 int search (int ,int ,char*) ;
 int stderror (int ) ;
 int xfree ;

void
doswitch(Char **v, struct command *c)
{
    Char *cp, *lp;

    USE(c);
    v++;
    if (!*v || *(*v++) != '(')
 stderror(ERR_SYNTAX);
    cp = **v == ')' ? STRNULL : *v++;
    if (*(*v++) != ')')
 v--;
    if (*v)
 stderror(ERR_SYNTAX);
    lp = globone(cp, G_ERROR);
    cleanup_push(lp, xfree);
    if (!noexec)
 search(TC_SWITCH, 0, lp);
    cleanup_until(lp);
}

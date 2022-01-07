
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int G_ERROR ;
 int USE (struct command*) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int * globone (int *,int ) ;
 int gotolab (int *) ;
 int noexec ;
 int xfree ;

void
dogoto(Char **v, struct command *c)
{
    Char *lp;

    USE(c);
    lp = globone(v[1], G_ERROR);
    cleanup_push(lp, xfree);
    if (!noexec)
 gotolab(lp);
    cleanup_until(lp);
}

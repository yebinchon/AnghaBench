
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int USE (struct command*) ;
 int flush () ;
 int xecho (int ,int **) ;

void
doglob(Char **v, struct command *c)
{
    USE(c);
    xecho(0, v);
    flush();
}

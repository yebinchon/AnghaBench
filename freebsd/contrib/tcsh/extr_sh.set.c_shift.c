
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {scalar_t__* vec; } ;
struct command {int dummy; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_NOMORE ;
 int * STRargv ;
 int USE (struct command*) ;
 struct varent* adrof (int *) ;
 int lshift (scalar_t__*,int) ;
 int stderror (int) ;
 int strip (int *) ;
 int udvar (int *) ;
 int update_vars (int *) ;

void
shift(Char **v, struct command *c)
{
    struct varent *argv;
    Char *name;

    USE(c);
    v++;
    name = *v;
    if (name == 0)
 name = STRargv;
    else
 (void) strip(name);
    argv = adrof(name);
    if (argv == ((void*)0) || argv->vec == ((void*)0))
 udvar(name);
    if (argv->vec[0] == 0)
 stderror(ERR_NAME | ERR_NOMORE);
    lshift(argv->vec, 1);
    update_vars(name);
}

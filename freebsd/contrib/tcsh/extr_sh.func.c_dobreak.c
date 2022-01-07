
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_NOTWHILE ;
 int USE (int **) ;
 int noexec ;
 int stderror (int) ;
 int toend () ;
 int * whyles ;

void
dobreak(Char **v, struct command *c)
{
    USE(v);
    USE(c);
    if (whyles == ((void*)0))
 stderror(ERR_NAME | ERR_NOTWHILE);
    if (!noexec)
 toend();
}

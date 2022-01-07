
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_NOTWHILE ;
 int USE (int **) ;
 int doagain () ;
 int noexec ;
 int stderror (int) ;
 int whyles ;

void
docontin(Char **v, struct command *c)
{
    USE(v);
    USE(c);
    if (!whyles)
 stderror(ERR_NAME | ERR_NOTWHILE);
    if (!noexec)
 doagain();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * command ;
struct TYPE_2__ {int w_end; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_NOTWHILE ;
 int USE (int **) ;
 int btell (int *) ;
 int doagain () ;
 int noexec ;
 int stderror (int) ;
 TYPE_1__* whyles ;

void
doend(Char **v, struct command *c)
{
    USE(v);
    USE(c);
    if (!whyles)
 stderror(ERR_NAME | ERR_NOTWHILE);
    btell(&whyles->w_end);
    if (!noexec)
 doagain();
}

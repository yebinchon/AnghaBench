
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {int next; } ;


 int ALEFT ;
 int ERR_ALIASLOOP ;
 int HLEFT ;
 scalar_t__ asyntax (int ,struct wordent*) ;
 int hleft ;
 int stderror (int ) ;

void
alias(struct wordent *lexp)
{
    int aleft;

    aleft = ALEFT;
    hleft = HLEFT;
    do {
 if (--aleft == 0)
     stderror(ERR_ALIASLOOP);
    } while (asyntax(lexp->next, lexp) != 0);
}

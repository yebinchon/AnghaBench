
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stype; int name; } ;
typedef TYPE_1__ Symbol ;


 scalar_t__ SUndefined ;
 int lex_error_message (char*,int ) ;

__attribute__((used)) static int
checkfunc(void *ptr, void *arg)
{
    Symbol *s = ptr;
    if (s->stype == SUndefined) {
 lex_error_message("%s is still undefined\n", s->name);
 *(int *) arg = 1;
    }
    return 0;
}

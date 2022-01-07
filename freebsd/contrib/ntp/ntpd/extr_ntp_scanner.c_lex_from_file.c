
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fpi; } ;


 TYPE_1__* lex_stack ;

int
lex_from_file(void)
{
 return (((void*)0) != lex_stack) && (((void*)0) != lex_stack->fpi);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_next; scalar_t__ force_eof; } ;


 int FALSE ;
 scalar_t__ TRUE ;
 int _drop_stack_do (int ) ;
 TYPE_1__* lex_stack ;

int
lex_flush_stack()
{
 int retv = FALSE;

 if (((void*)0) != lex_stack) {
  retv = !lex_stack->force_eof;
  lex_stack->force_eof = TRUE;
  lex_stack->st_next = _drop_stack_do(
     lex_stack->st_next);
 }
 return retv;
}

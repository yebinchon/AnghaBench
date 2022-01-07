
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _drop_stack_do (int ) ;
 int lex_stack ;

void
lex_drop_stack()
{
 lex_stack = _drop_stack_do(lex_stack);
}

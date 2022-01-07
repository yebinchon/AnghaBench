
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * stdin ;
 int * stdout ;
 scalar_t__ yy_buffer_stack ;
 scalar_t__ yy_buffer_stack_max ;
 scalar_t__ yy_buffer_stack_top ;
 char* yy_c_buf_p ;
 scalar_t__ yy_init ;
 scalar_t__ yy_start ;
 int * yyin ;
 int * yyout ;

__attribute__((used)) static int yy_init_globals (void)
{




    (yy_buffer_stack) = 0;
    (yy_buffer_stack_top) = 0;
    (yy_buffer_stack_max) = 0;
    (yy_c_buf_p) = (char *) 0;
    (yy_init) = 0;
    (yy_start) = 0;






    yyin = (FILE *) 0;
    yyout = (FILE *) 0;





    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_n_chars; int * yy_buf_pos; } ;


 scalar_t__ YY_CURRENT_BUFFER ;
 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 int yy_buffer_stack_top ;
 int * yy_c_buf_p ;
 int yy_did_buffer_switch_on_eof ;
 int yy_hold_char ;
 int yy_load_buffer_state () ;
 int yy_n_chars ;
 int yyensure_buffer_stack () ;

void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
{
     if (new_buffer == ((void*)0))
  return;

 yyensure_buffer_stack();


 if ( YY_CURRENT_BUFFER )
  {

  *(yy_c_buf_p) = (yy_hold_char);
  YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
  YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
  }


 if (YY_CURRENT_BUFFER)
  (yy_buffer_stack_top)++;
 YY_CURRENT_BUFFER_LVALUE = new_buffer;


 yy_load_buffer_state( );
 (yy_did_buffer_switch_on_eof) = 1;
}

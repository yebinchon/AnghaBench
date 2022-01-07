
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int YY_CURRENT_BUFFER_LVALUE ;
 int yy_create_buffer (int ,int ) ;
 int yy_init_buffer (int ,int *) ;
 int yy_load_buffer_state () ;
 int yyensure_buffer_stack () ;
 int yyin ;

void yyrestart (FILE * input_file )
{

 if ( ! YY_CURRENT_BUFFER ){
        yyensure_buffer_stack ();
  YY_CURRENT_BUFFER_LVALUE =
            yy_create_buffer(yyin,YY_BUF_SIZE );
 }

 yy_init_buffer(YY_CURRENT_BUFFER,input_file );
 yy_load_buffer_state( );
}

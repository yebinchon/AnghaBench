
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
struct trailing_context_printer {TYPE_1__* mob; int lines_to_print; } ;
struct TYPE_3__ {int * output_stream; int pool; int context_size; } ;
typedef TYPE_1__ merge_output_baton_t ;


 struct trailing_context_printer* apr_pcalloc (int ,int) ;
 int svn_pool_clear (int ) ;
 int * svn_stream_empty (int ) ;
 int svn_stream_set_baton (int *,struct trailing_context_printer*) ;
 int svn_stream_set_write (int *,int ) ;
 int trailing_context_printer_write ;

__attribute__((used)) static void
make_trailing_context_printer(merge_output_baton_t *btn)
{
  struct trailing_context_printer *tcp;
  svn_stream_t *s;

  svn_pool_clear(btn->pool);

  tcp = apr_pcalloc(btn->pool, sizeof(*tcp));
  tcp->lines_to_print = btn->context_size;
  tcp->mob = btn;
  s = svn_stream_empty(btn->pool);
  svn_stream_set_baton(s, tcp);
  svn_stream_set_write(s, trailing_context_printer_write);
  btn->output_stream = s;
}

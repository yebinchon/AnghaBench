
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct trailing_context_printer {scalar_t__ lines_to_print; TYPE_1__* fob; } ;
typedef int apr_size_t ;
struct TYPE_2__ {int real_output_stream; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int make_context_saver (TYPE_1__*) ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
trailing_context_printer_write(void *baton,
                               const char *data,
                               apr_size_t *len)
{
  struct trailing_context_printer *tcp = baton;
  SVN_ERR_ASSERT(tcp->lines_to_print > 0);
  SVN_ERR(svn_stream_write(tcp->fob->real_output_stream, data, len));
  tcp->lines_to_print--;
  if (tcp->lines_to_print == 0)
    make_context_saver(tcp->fob);
  return SVN_NO_ERROR;
}

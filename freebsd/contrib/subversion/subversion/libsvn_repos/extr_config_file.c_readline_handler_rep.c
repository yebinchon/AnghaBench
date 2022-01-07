
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int inner; } ;
typedef TYPE_1__ presentation_stream_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int auto_open_inner_stream (TYPE_1__*) ;
 int * svn_error_trace (int ) ;
 int svn_stream_readline (int ,int **,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
readline_handler_rep(void *baton,
                        svn_stringbuf_t **stringbuf,
                        const char *eol,
                        svn_boolean_t *eof,
                        apr_pool_t *pool)
{
  presentation_stream_baton_t *b = baton;
  SVN_ERR(auto_open_inner_stream(b));

  return svn_error_trace(svn_stream_readline(b->inner, stringbuf, eol, eof,
                                             pool));
}

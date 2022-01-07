
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_readline (void*,int **,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
readline_handler_disown(void *baton,
                        svn_stringbuf_t **stringbuf,
                        const char *eol,
                        svn_boolean_t *eof,
                        apr_pool_t *pool)
{
  return svn_error_trace(svn_stream_readline(baton, stringbuf, eol,
                                             eof, pool));
}

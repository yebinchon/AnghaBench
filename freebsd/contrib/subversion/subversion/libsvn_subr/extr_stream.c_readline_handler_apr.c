
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct baton_apr {int file; } ;
typedef int apr_pool_t ;


 int readline_apr_generic (int ,int **,char const*,int *,int *) ;
 int readline_apr_lf (int ,int **,int *,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
readline_handler_apr(void *baton,
                     svn_stringbuf_t **stringbuf,
                     const char *eol,
                     svn_boolean_t *eof,
                     apr_pool_t *pool)
{
  struct baton_apr *btn = baton;

  if (eol[0] == '\n' && eol[1] == '\0')
    {


      return svn_error_trace(readline_apr_lf(btn->file, stringbuf,
                                             eof, pool));
    }
  else
    {
      return svn_error_trace(readline_apr_generic(btn->file, stringbuf,
                                                  eol, eof, pool));
    }
}

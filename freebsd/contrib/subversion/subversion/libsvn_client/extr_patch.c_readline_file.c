
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_SIZE_MAX ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_readline (int *,TYPE_1__**,char const**,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
readline_file(void *baton, svn_stringbuf_t **line, const char **eol_str,
              svn_boolean_t *eof, apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  apr_file_t *file = baton;

  SVN_ERR(svn_io_file_readline(file, line, eol_str, eof, APR_SIZE_MAX,
                               result_pool, scratch_pool));

  if (!(*line)->len)
    *line = ((void*)0);
  else
    *eof = FALSE;

  return SVN_NO_ERROR;
}

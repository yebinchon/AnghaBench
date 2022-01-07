
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_EOL_STR ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_stream_for_stdin2 (int **,int ,int *) ;
 int svn_stream_readline (int *,TYPE_1__**,int ,int *,int *) ;

svn_error_t *
svn_cmdline__stdin_readline(const char **result,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *buf = ((void*)0);
  svn_stream_t *stdin_stream = ((void*)0);
  svn_boolean_t oob = FALSE;

  SVN_ERR(svn_stream_for_stdin2(&stdin_stream, TRUE, scratch_pool));
  SVN_ERR(svn_stream_readline(stdin_stream, &buf, APR_EOL_STR, &oob, result_pool));

  *result = buf->data;

  return SVN_NO_ERROR;
}

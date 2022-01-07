
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
typedef int apr_file_t ;


 int APR_FOPEN_READ ;
 int APR_FPROT_OS_DEFAULT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_logmsg_from_patch(const char **logmsg,
                       const char *patch_abspath,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  apr_file_t *file;
  svn_stream_t *stream;
  svn_boolean_t eof;
  svn_stringbuf_t *line;

  SVN_ERR(svn_io_file_open(&file, patch_abspath,
                           APR_FOPEN_READ, APR_FPROT_OS_DEFAULT, scratch_pool));
  stream = svn_stream_from_aprfile2(file, FALSE , scratch_pool);
  SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, result_pool));
  SVN_ERR(svn_stream_close(stream));
  *logmsg = line->data;
  return SVN_NO_ERROR;
}

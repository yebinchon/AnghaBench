
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_spillbuf_reader_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int start_empty; int * pool; int * lock_token; int depth; int * path; int rev; int * link_path; } ;
typedef TYPE_1__ path_info_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int read_depth (int *,int *,int *,int *) ;
 int read_rev (int *,int *,int *) ;
 int read_string (int **,int *,int *) ;
 int svn_depth_infinity ;
 int svn_spillbuf__reader_getc (char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_path_info(path_info_t **pi,
               svn_spillbuf_reader_t *reader,
               apr_pool_t *pool)
{
  char c;

  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  if (c == '-')
    {
      *pi = ((void*)0);
      return SVN_NO_ERROR;
    }

  *pi = apr_palloc(pool, sizeof(**pi));
  SVN_ERR(read_string(&(*pi)->path, reader, pool));
  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  if (c == '+')
    SVN_ERR(read_string(&(*pi)->link_path, reader, pool));
  else
    (*pi)->link_path = ((void*)0);
  SVN_ERR(read_rev(&(*pi)->rev, reader, pool));
  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  if (c == '+')
    SVN_ERR(read_depth(&((*pi)->depth), reader, (*pi)->path, pool));
  else
    (*pi)->depth = svn_depth_infinity;
  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  (*pi)->start_empty = (c == '+');
  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  if (c == '+')
    SVN_ERR(read_string(&(*pi)->lock_token, reader, pool));
  else
    (*pi)->lock_token = ((void*)0);
  (*pi)->pool = pool;
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct mark_apr {int off; } ;
struct baton_apr {int pool; int file; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct mark_apr* apr_palloc (int *,int) ;
 int svn_io_file_get_offset (int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
mark_handler_apr(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  struct baton_apr *btn = baton;
  struct mark_apr *mark_apr;

  mark_apr = apr_palloc(pool, sizeof(*mark_apr));
  SVN_ERR(svn_io_file_get_offset(&mark_apr->off, btn->file, btn->pool));
  *mark = (svn_stream_mark_t *)mark_apr;
  return SVN_NO_ERROR;
}

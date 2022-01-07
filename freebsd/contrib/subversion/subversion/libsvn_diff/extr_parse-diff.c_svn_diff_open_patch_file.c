
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ next_patch_offset; int apr_file; } ;
typedef TYPE_1__ svn_patch_file_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_io_file_open (int *,char const*,int,int ,int *) ;

svn_error_t *
svn_diff_open_patch_file(svn_patch_file_t **patch_file,
                         const char *local_abspath,
                         apr_pool_t *result_pool)
{
  svn_patch_file_t *p;

  p = apr_palloc(result_pool, sizeof(*p));
  SVN_ERR(svn_io_file_open(&p->apr_file, local_abspath,
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           result_pool));
  p->next_patch_offset = 0;
  *patch_file = p;

  return SVN_NO_ERROR;
}

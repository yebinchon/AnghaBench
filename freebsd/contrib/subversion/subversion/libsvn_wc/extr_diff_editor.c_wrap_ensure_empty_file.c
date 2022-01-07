
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result_pool; scalar_t__ empty_file; } ;
typedef TYPE_1__ wc_diff_wrap_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_open_unique_file3 (int *,scalar_t__*,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
wrap_ensure_empty_file(wc_diff_wrap_baton_t *wb,
                       apr_pool_t *scratch_pool)
{
  if (wb->empty_file)
    return SVN_NO_ERROR;


  SVN_ERR(svn_io_open_unique_file3(((void*)0), &wb->empty_file, ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   wb->result_pool, scratch_pool));

  return SVN_NO_ERROR;
}

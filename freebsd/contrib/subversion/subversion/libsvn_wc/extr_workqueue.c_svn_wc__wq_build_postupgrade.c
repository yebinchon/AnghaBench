
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int OP_POSTUPGRADE ;
 int * SVN_NO_ERROR ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend_str (int ,int *,int *) ;

svn_error_t *
svn_wc__wq_build_postupgrade(svn_skel_t **work_item,
                             apr_pool_t *result_pool)
{
  *work_item = svn_skel__make_empty_list(result_pool);

  svn_skel__prepend_str(OP_POSTUPGRADE, *work_item, result_pool);

  return SVN_NO_ERROR;
}

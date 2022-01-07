
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_wc_committed_queue_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_process_committed_queue2 (int *,int *,int ,char const*,char const*,int *,int *,int *) ;

svn_error_t *
svn_wc_process_committed_queue(svn_wc_committed_queue_t *queue,
                               svn_wc_adm_access_t *adm_access,
                               svn_revnum_t new_revnum,
                               const char *rev_date,
                               const char *rev_author,
                               apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0),
                                         svn_wc__adm_get_db(adm_access),
                                         pool));
  SVN_ERR(svn_wc_process_committed_queue2(queue, wc_ctx, new_revnum,
                                          rev_date, rev_author,
                                          ((void*)0), ((void*)0), pool));
  SVN_ERR(svn_wc_context_destroy(wc_ctx));

  return SVN_NO_ERROR;
}

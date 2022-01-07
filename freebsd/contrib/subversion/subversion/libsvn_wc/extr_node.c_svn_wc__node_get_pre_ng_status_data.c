
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_base_get_info (int *,int *,int *,int *,int *,int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,scalar_t__*,int ,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_info (int *,int *,int *,int *,char const**,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;

svn_error_t *
svn_wc__node_get_pre_ng_status_data(svn_revnum_t *revision,
                                   svn_revnum_t *changed_rev,
                                   apr_time_t *changed_date,
                                   const char **changed_author,
                                   svn_wc_context_t *wc_ctx,
                                   const char *local_abspath,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_boolean_t have_base, have_more_work, have_work;

  SVN_ERR(svn_wc__db_read_info(&status, ((void*)0), revision, ((void*)0), ((void*)0), ((void*)0),
                               changed_rev, changed_date, changed_author,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               &have_base, &have_more_work, &have_work,
                               wc_ctx->db, local_abspath,
                               result_pool, scratch_pool));

  if (!have_work
      || ((!changed_rev || SVN_IS_VALID_REVNUM(*changed_rev))
          && (!revision || SVN_IS_VALID_REVNUM(*revision)))
      || ((status != svn_wc__db_status_added)
          && (status != svn_wc__db_status_deleted)))
    {
      return SVN_NO_ERROR;
    }

  if (have_base && !have_more_work)
    SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), revision, ((void*)0), ((void*)0), ((void*)0),
                                     changed_rev, changed_date, changed_author,
                                     ((void*)0), ((void*)0), ((void*)0),
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     wc_ctx->db, local_abspath,
                                     result_pool, scratch_pool));
  else if (status == svn_wc__db_status_deleted)

    SVN_ERR(svn_wc__db_read_pristine_info(((void*)0), ((void*)0), changed_rev,
                                          changed_date, changed_author, ((void*)0),
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          wc_ctx->db, local_abspath,
                                          result_pool, scratch_pool));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__committables_t ;
typedef int svn_client__check_url_kind_t ;
struct copy_committables_baton {void* check_url_baton; int check_url_func; int * result_pool; int * committables; int * ctx; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int create_committables (int **,int *) ;
 int harvest_copy_committables ;
 int * svn_iter_apr_array (int *,int const*,int ,struct copy_committables_baton*,int *) ;

svn_error_t *
svn_client__get_copy_committables(svn_client__committables_t **committables,
                                  const apr_array_header_t *copy_pairs,
                                  svn_client__check_url_kind_t check_url_func,
                                  void *check_url_baton,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  struct copy_committables_baton btn;


  create_committables(committables, result_pool);

  btn.ctx = ctx;
  btn.committables = *committables;
  btn.result_pool = result_pool;

  btn.check_url_func = check_url_func;
  btn.check_url_baton = check_url_baton;



  return svn_iter_apr_array(((void*)0), copy_pairs,
                            harvest_copy_committables, &btn, scratch_pool);
}

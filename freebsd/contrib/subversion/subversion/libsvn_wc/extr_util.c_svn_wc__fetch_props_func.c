
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct svn_wc__shim_fetch_baton_t {int db; scalar_t__ fetch_base; int base_abspath; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_wc__db_base_get_props (int **,int ,char const*,int *,int *) ;
 TYPE_1__* svn_wc__db_read_props (int **,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__fetch_props_func(apr_hash_t **props,
                         void *baton,
                         const char *path,
                         svn_revnum_t base_revision,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  struct svn_wc__shim_fetch_baton_t *sfb = baton;
  const char *local_abspath = svn_dirent_join(sfb->base_abspath, path,
                                              scratch_pool);
  svn_error_t *err;

  if (sfb->fetch_base)
    err = svn_wc__db_base_get_props(props, sfb->db, local_abspath, result_pool,
                                    scratch_pool);
  else
    err = svn_wc__db_read_props(props, sfb->db, local_abspath,
                                result_pool, scratch_pool);


  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);
      *props = apr_hash_make(result_pool);
    }
  else if (err)
    return svn_error_trace(err);

  return SVN_NO_ERROR;
}

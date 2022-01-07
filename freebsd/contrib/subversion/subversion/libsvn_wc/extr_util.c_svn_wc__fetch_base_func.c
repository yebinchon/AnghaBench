
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_checksum_t ;
struct svn_wc__shim_fetch_baton_t {int db; int base_abspath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_wc__db_base_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int ,char const*,int const*,int *,int *) ;

svn_error_t *
svn_wc__fetch_base_func(const char **filename,
                        void *baton,
                        const char *path,
                        svn_revnum_t base_revision,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  struct svn_wc__shim_fetch_baton_t *sfb = baton;
  const svn_checksum_t *checksum;
  svn_error_t *err;
  const char *local_abspath = svn_dirent_join(sfb->base_abspath, path,
                                              scratch_pool);

  err = svn_wc__db_base_get_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), &checksum,
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 sfb->db, local_abspath,
                                 scratch_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);
      *filename = ((void*)0);
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);

  if (checksum == ((void*)0))
    {
      *filename = ((void*)0);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc__db_pristine_get_path(filename, sfb->db, local_abspath,
                                       checksum, scratch_pool, scratch_pool));

  return SVN_NO_ERROR;
}

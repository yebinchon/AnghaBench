
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
struct TYPE_18__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef TYPE_2__* (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (int ) ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_io_dir_remove_nonrecursive (char const*,int *) ;
 TYPE_2__* svn_io_get_dirents3 (int **,char const*,int ,int *,int *) ;
 TYPE_2__* svn_io_remove_file2 (char const*,scalar_t__,int *) ;
 scalar_t__ svn_node_dir ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_io_remove_dir2(const char *path, svn_boolean_t ignore_enoent,
                   svn_cancel_func_t cancel_func, void *cancel_baton,
                   apr_pool_t *pool)
{
  svn_error_t *err;
  apr_pool_t *subpool;
  apr_hash_t *dirents;
  apr_hash_index_t *hi;




  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));

  subpool = svn_pool_create(pool);

  err = svn_io_get_dirents3(&dirents, path, TRUE, subpool, subpool);
  if (err)
    {

      if (ignore_enoent && (APR_STATUS_IS_ENOENT(err->apr_err)
                            || SVN__APR_STATUS_IS_ENOTDIR(err->apr_err)))
        {
          svn_error_clear(err);
          return SVN_NO_ERROR;
        }
      return svn_error_trace(err);
    }

  for (hi = apr_hash_first(subpool, dirents); hi; hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      const svn_io_dirent2_t *dirent = apr_hash_this_val(hi);
      const char *fullpath;

      fullpath = svn_dirent_join(path, name, subpool);
      if (dirent->kind == svn_node_dir)
        {

          SVN_ERR(svn_io_remove_dir2(fullpath, FALSE, cancel_func,
                                     cancel_baton, subpool));
        }
      else
        {
          if (cancel_func)
            SVN_ERR(cancel_func(cancel_baton));

          err = svn_io_remove_file2(fullpath, FALSE, subpool);
          if (err)
            return svn_error_createf
              (err->apr_err, err, _("Can't remove '%s'"),
               svn_dirent_local_style(fullpath, subpool));
        }
    }

  svn_pool_destroy(subpool);

  return svn_io_dir_remove_nonrecursive(path, pool);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__revision_file_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_FS_NO_SUCH_REVISION ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_fs_fs__open_pack_or_rev_file (int **,int *,int,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
recover_get_largest_revision(svn_fs_t *fs, svn_revnum_t *rev, apr_pool_t *pool)
{




  apr_pool_t *iterpool;
  svn_revnum_t left, right = 1;

  iterpool = svn_pool_create(pool);

  while (1)
    {
      svn_error_t *err;
      svn_fs_fs__revision_file_t *file;
      svn_pool_clear(iterpool);

      err = svn_fs_fs__open_pack_or_rev_file(&file, fs, right, iterpool,
                                             iterpool);
      if (err && err->apr_err == SVN_ERR_FS_NO_SUCH_REVISION)
        {
          svn_error_clear(err);
          break;
        }
      else
        SVN_ERR(err);

      right <<= 1;
    }

  left = right >> 1;



  while (left + 1 < right)
    {
      svn_revnum_t probe = left + ((right - left) / 2);
      svn_error_t *err;
      svn_fs_fs__revision_file_t *file;
      svn_pool_clear(iterpool);

      err = svn_fs_fs__open_pack_or_rev_file(&file, fs, probe, iterpool,
                                             iterpool);
      if (err && err->apr_err == SVN_ERR_FS_NO_SUCH_REVISION)
        {
          svn_error_clear(err);
          right = probe;
        }
      else
        {
          SVN_ERR(err);
          left = probe;
        }
    }

  svn_pool_destroy(iterpool);


  *rev = left;
  return SVN_NO_ERROR;
}

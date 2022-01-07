
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int revision_file_exists (scalar_t__*,int *,int,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
recover_get_largest_revision(svn_fs_t *fs,
                             svn_revnum_t *rev,
                             apr_pool_t *scratch_pool)
{




  apr_pool_t *iterpool;
  svn_revnum_t left, right = 1;

  iterpool = svn_pool_create(scratch_pool);

  while (1)
    {
      svn_boolean_t exists;
      svn_pool_clear(iterpool);

      SVN_ERR(revision_file_exists(&exists, fs, right, iterpool));
      if (!exists)
        break;

      right <<= 1;
    }

  left = right >> 1;



  while (left + 1 < right)
    {
      svn_revnum_t probe = left + ((right - left) / 2);
      svn_boolean_t exists;
      svn_pool_clear(iterpool);

      SVN_ERR(revision_file_exists(&exists, fs, probe, iterpool));
      if (exists)
        left = probe;
      else
        right = probe;
    }

  svn_pool_destroy(iterpool);


  *rev = left;
  return SVN_NO_ERROR;
}

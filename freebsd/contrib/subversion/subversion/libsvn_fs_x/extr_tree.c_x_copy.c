
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int copy_helper (int *,int ,int *,int ,int ,int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_copy(svn_fs_root_t *from_root,
       const char *from_path,
       svn_fs_root_t *to_root,
       const char *to_path,
       apr_pool_t *scratch_pool)
{
  apr_pool_t *subpool = svn_pool_create(scratch_pool);

  SVN_ERR(copy_helper(from_root,
                      svn_fs__canonicalize_abspath(from_path, subpool),
                      to_root,
                      svn_fs__canonicalize_abspath(to_path, subpool),
                      TRUE, subpool));

  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}

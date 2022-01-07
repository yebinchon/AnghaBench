
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int check_newline (char const*,int *) ;
 int copy_helper (int *,int ,int *,int ,int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;

__attribute__((used)) static svn_error_t *
fs_copy(svn_fs_root_t *from_root,
        const char *from_path,
        svn_fs_root_t *to_root,
        const char *to_path,
        apr_pool_t *pool)
{
  SVN_ERR(check_newline(to_path, pool));

  return svn_error_trace(copy_helper(from_root,
                                     svn_fs__canonicalize_abspath(from_path,
                                                                  pool),
                                     to_root,
                                     svn_fs__canonicalize_abspath(to_path,
                                                                  pool),
                                     TRUE, pool));
}

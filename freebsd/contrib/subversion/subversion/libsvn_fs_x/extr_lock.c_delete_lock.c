
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int digest_path_from_path (char const**,char const*,char const*,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
delete_lock(const char *fs_path,
            const char *path,
            apr_pool_t *scratch_pool)
{
  const char *digest_path;

  SVN_ERR(digest_path_from_path(&digest_path, fs_path, path, scratch_pool));

  SVN_ERR(svn_io_remove_file2(digest_path, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}

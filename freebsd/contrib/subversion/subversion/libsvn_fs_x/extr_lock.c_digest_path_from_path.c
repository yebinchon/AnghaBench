
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int DIGEST_SUBDIR_LEN ;
 int PATH_LOCKS_DIR ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int apr_pstrmemdup (int *,char const*,int ) ;
 int make_digest (char const**,char const*,int *) ;
 char* svn_dirent_join_many (int *,char const*,int ,int ,char const*,int ) ;

__attribute__((used)) static svn_error_t *
digest_path_from_path(const char **digest_path,
                      const char *fs_path,
                      const char *path,
                      apr_pool_t *pool)
{
  const char *digest;
  SVN_ERR(make_digest(&digest, path, pool));
  *digest_path = svn_dirent_join_many(pool, fs_path, PATH_LOCKS_DIR,
                                      apr_pstrmemdup(pool, digest,
                                                     DIGEST_SUBDIR_LEN),
                                      digest, SVN_VA_NULL);
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int DIGEST_SUBDIR_LEN ;
 int PATH_LOCKS_DIR ;
 int SVN_VA_NULL ;
 int apr_pstrmemdup (int *,char const*,int ) ;
 char const* svn_dirent_join_many (int *,char const*,int ,int ,char const*,int ) ;

__attribute__((used)) static const char *
digest_path_from_digest(const char *fs_path,
                        const char *digest,
                        apr_pool_t *pool)
{
  return svn_dirent_join_many(pool, fs_path, PATH_LOCKS_DIR,
                              apr_pstrmemdup(pool, digest, DIGEST_SUBDIR_LEN),
                              digest, SVN_VA_NULL);
}

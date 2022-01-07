
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int digest_path_from_path (char const**,char const*,int ,int *) ;
 int read_digest_file (int **,int *,char const*,char const*,int *) ;
 int write_digest_file (int *,TYPE_1__*,char const*,char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
set_lock(const char *fs_path,
         svn_lock_t *lock,
         const char *perms_reference,
         apr_pool_t *scratch_pool)
{
  const char *digest_path;
  apr_hash_t *children;

  SVN_ERR(digest_path_from_path(&digest_path, fs_path, lock->path,
                                scratch_pool));



  SVN_ERR(read_digest_file(&children, ((void*)0), fs_path, digest_path,
                           scratch_pool));

  SVN_ERR(write_digest_file(children, lock, fs_path, digest_path,
                            perms_reference, scratch_pool));

  return SVN_NO_ERROR;
}

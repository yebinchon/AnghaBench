
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_11__ {int token; } ;
typedef TYPE_1__ svn_lock_t ;
struct TYPE_12__ {int path; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_FS__ERR_LOCK_EXPIRED (TYPE_2__*,int ) ;
 int * SVN_FS__ERR_NO_SUCH_LOCK (TYPE_2__*,char const*) ;
 int * SVN_NO_ERROR ;
 int digest_path_from_path (char const**,int ,char const*,int *) ;
 scalar_t__ lock_expired (TYPE_1__*) ;
 int read_digest_file (int *,TYPE_1__**,int ,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;
 int unlock_single (TYPE_2__*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_lock(svn_lock_t **lock_p,
         svn_fs_t *fs,
         const char *path,
         svn_boolean_t have_write_lock,
         svn_boolean_t must_exist,
         apr_pool_t *pool)
{
  svn_lock_t *lock = ((void*)0);
  const char *digest_path;
  svn_node_kind_t kind;

  SVN_ERR(digest_path_from_path(&digest_path, fs->path, path, pool));
  SVN_ERR(svn_io_check_path(digest_path, &kind, pool));

  *lock_p = ((void*)0);
  if (kind != svn_node_none)
    SVN_ERR(read_digest_file(((void*)0), &lock, fs->path, digest_path, pool));

  if (! lock)
    return must_exist ? SVN_FS__ERR_NO_SUCH_LOCK(fs, path) : SVN_NO_ERROR;


  if (lock_expired(lock))
    {


      if (have_write_lock)
        SVN_ERR(unlock_single(fs, lock, pool));
      return SVN_FS__ERR_LOCK_EXPIRED(fs, lock->token);
    }

  *lock_p = lock;
  return SVN_NO_ERROR;
}

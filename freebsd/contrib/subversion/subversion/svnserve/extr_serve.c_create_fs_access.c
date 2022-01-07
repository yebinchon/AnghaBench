
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_access_t ;
typedef int svn_error_t ;
struct cleanup_fs_access_baton {int fs; int * pool; } ;
struct TYPE_7__ {TYPE_2__* repository; TYPE_1__* client_info; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int fs; } ;
struct TYPE_5__ {int user; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct cleanup_fs_access_baton* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,struct cleanup_fs_access_baton*,int ,int ) ;
 int cleanup_fs_access ;
 int svn_fs_create_access (int **,int ,int *) ;
 int svn_fs_set_access (int ,int *) ;

__attribute__((used)) static svn_error_t *
create_fs_access(server_baton_t *b, apr_pool_t *pool)
{
  svn_fs_access_t *fs_access;
  struct cleanup_fs_access_baton *cleanup_baton;

  if (!b->client_info->user)
    return SVN_NO_ERROR;

  SVN_ERR(svn_fs_create_access(&fs_access, b->client_info->user, pool));
  SVN_ERR(svn_fs_set_access(b->repository->fs, fs_access));

  cleanup_baton = apr_pcalloc(pool, sizeof(*cleanup_baton));
  cleanup_baton->pool = pool;
  cleanup_baton->fs = b->repository->fs;
  apr_pool_cleanup_register(pool, cleanup_baton, cleanup_fs_access,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}

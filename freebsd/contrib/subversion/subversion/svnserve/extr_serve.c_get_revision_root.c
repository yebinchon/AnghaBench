
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int fs; } ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_revision_root(svn_fs_root_t **fs_root,
                  void *baton,
                  svn_revnum_t revision,
                  apr_pool_t *pool)
{
  server_baton_t *sb = baton;

  if (!SVN_IS_VALID_REVNUM(revision))
    SVN_ERR(svn_fs_youngest_rev(&revision, sb->repository->fs, pool));

  SVN_ERR(svn_fs_revision_root(fs_root, sb->repository->fs, revision, pool));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int repos_node_status; int changelist; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
typedef int svn_client_status_t ;
struct status_baton {int real_status_baton; int * (* real_status_func ) (int ,char const*,int *,int *) ;int wc_ctx; scalar_t__ deleted_in_repos; scalar_t__ changelist_hash; scalar_t__ anchor_abspath; int anchor_relpath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * stub1 (int ,char const*,int *,int *) ;
 int svn_client__create_status (int **,int ,char const*,TYPE_1__ const*,int *,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_dirent_skip_ancestor (scalar_t__,char const*) ;
 int svn_hash_gets (scalar_t__,int ) ;
 TYPE_1__* svn_wc_dup_status3 (TYPE_1__ const*,int *) ;
 int svn_wc_status_deleted ;

__attribute__((used)) static svn_error_t *
tweak_status(void *baton,
             const char *local_abspath,
             const svn_wc_status3_t *status,
             apr_pool_t *scratch_pool)
{
  struct status_baton *sb = baton;
  const char *path = local_abspath;
  svn_client_status_t *cst;

  if (sb->anchor_abspath)
    path = svn_dirent_join(sb->anchor_relpath,
                           svn_dirent_skip_ancestor(sb->anchor_abspath, path),
                           scratch_pool);




  if (sb->changelist_hash
      && (! status->changelist
          || ! svn_hash_gets(sb->changelist_hash, status->changelist)))
    {
      return SVN_NO_ERROR;
    }




  if (sb->deleted_in_repos)
    {
      svn_wc_status3_t *new_status = svn_wc_dup_status3(status, scratch_pool);
      new_status->repos_node_status = svn_wc_status_deleted;
      status = new_status;
    }

  SVN_ERR(svn_client__create_status(&cst, sb->wc_ctx, local_abspath, status,
                                    scratch_pool, scratch_pool));


  return sb->real_status_func(sb->real_status_baton, path, cst,
                              scratch_pool);
}

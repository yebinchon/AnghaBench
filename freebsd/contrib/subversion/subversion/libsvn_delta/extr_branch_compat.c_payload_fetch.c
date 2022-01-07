
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int rev; int relpath; } ;
typedef TYPE_1__ svn_pathrev_t ;
typedef int svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; int text; int props; } ;
typedef TYPE_2__ svn_element__payload_t ;
struct TYPE_11__ {int fetch_baton; int (* fetch_func ) (scalar_t__*,int *,int *,int **,int ,int ,int ,int *,int *) ;} ;
typedef TYPE_3__ svn_branch__txn_priv_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int stub1 (scalar_t__*,int *,int *,int **,int ,int ,int ,int *,int *) ;
 int svn_element__payload_invariants (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_error_t *
payload_fetch(svn_element__payload_t **payload_p,
              apr_hash_t **children_names,
              svn_branch__txn_priv_t *eb,
              const svn_pathrev_t *path_rev,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_element__payload_t *payload
    = apr_pcalloc(result_pool, sizeof (*payload));

  SVN_ERR(eb->fetch_func(&payload->kind,
                         &payload->props,
                         &payload->text,
                         children_names,
                         eb->fetch_baton,
                         path_rev->relpath, path_rev->rev,
                         result_pool, scratch_pool));

  SVN_ERR_ASSERT(svn_element__payload_invariants(payload));
  SVN_ERR_ASSERT(payload->kind == svn_node_dir
                 || payload->kind == svn_node_file);
  if (payload_p)
    *payload_p = payload;
  return SVN_NO_ERROR;
}

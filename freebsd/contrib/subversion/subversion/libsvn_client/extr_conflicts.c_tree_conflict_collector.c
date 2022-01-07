
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ action; scalar_t__ prop_state; scalar_t__ content_state; int path; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct conflict_status_walker_baton {scalar_t__ unresolved_tree_conflicts; int notify_baton; int (* notify_func ) (int ,TYPE_1__ const*,int *) ;} ;
typedef int apr_pool_t ;


 int * apr_hash_pool_get (scalar_t__) ;
 char* apr_pstrdup (int *,int ) ;
 int stub1 (int ,TYPE_1__ const*,int *) ;
 int svn_hash_gets (scalar_t__,int ) ;
 int svn_hash_sets (scalar_t__,char const*,char*) ;
 scalar_t__ svn_wc_notify_state_conflicted ;
 scalar_t__ svn_wc_notify_tree_conflict ;

__attribute__((used)) static void
tree_conflict_collector(void *baton,
                        const svn_wc_notify_t *notify,
                        apr_pool_t *pool)
{
  struct conflict_status_walker_baton *cswb = baton;

  if (cswb->notify_func)
    cswb->notify_func(cswb->notify_baton, notify, pool);

  if (cswb->unresolved_tree_conflicts
      && (notify->action == svn_wc_notify_tree_conflict
          || notify->prop_state == svn_wc_notify_state_conflicted
          || notify->content_state == svn_wc_notify_state_conflicted))
    {
      if (!svn_hash_gets(cswb->unresolved_tree_conflicts, notify->path))
        {
          const char *tc_abspath;
          apr_pool_t *hash_pool;

          hash_pool = apr_hash_pool_get(cswb->unresolved_tree_conflicts);
          tc_abspath = apr_pstrdup(hash_pool, notify->path);
          svn_hash_sets(cswb->unresolved_tree_conflicts, tc_abspath, "");
        }
    }
}

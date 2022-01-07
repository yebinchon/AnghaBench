
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int revision; } ;
typedef TYPE_2__ svn_wc_notify_t ;
struct TYPE_9__ {int path; int range_start; } ;
typedef TYPE_3__ svn_location_segment_t ;
typedef int svn_error_t ;
struct find_added_rev_baton {int pool; int repos_relpath; int added_rev; int * parent_repos_relpath; TYPE_1__* ctx; int victim_abspath; } ;
typedef int apr_pool_t ;
struct TYPE_7__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_2__*,int *) ;} ;


 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,int ) ;
 int stub1 (int ,TYPE_2__*,int *) ;
 int * svn_relpath_skip_ancestor (int *,int ) ;
 TYPE_2__* svn_wc_create_notify (int ,int ,int *) ;
 int svn_wc_notify_tree_conflict_details_progress ;

__attribute__((used)) static svn_error_t *
find_added_rev(svn_location_segment_t *segment,
               void *baton,
               apr_pool_t *scratch_pool)
{
  struct find_added_rev_baton *b = baton;

  if (b->ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      notify = svn_wc_create_notify(
                 b->victim_abspath,
                 svn_wc_notify_tree_conflict_details_progress,
                 scratch_pool),
      notify->revision = segment->range_start;
      b->ctx->notify_func2(b->ctx->notify_baton2, notify, scratch_pool);
    }

  if (segment->path)
    {
      if (b->parent_repos_relpath == ((void*)0) ||
          svn_relpath_skip_ancestor(b->parent_repos_relpath,
                                    segment->path) != ((void*)0))
        {
          b->added_rev = segment->range_start;
          b->repos_relpath = apr_pstrdup(b->pool, segment->path);
        }
    }

  return SVN_NO_ERROR;
}

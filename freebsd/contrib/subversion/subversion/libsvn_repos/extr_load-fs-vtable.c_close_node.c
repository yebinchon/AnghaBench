
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_notify_t ;
typedef int svn_error_t ;
struct revision_baton {scalar_t__ skipped; struct parse_baton* pb; } ;
struct parse_baton {int notify_pool; int notify_baton; int (* notify_func ) (int ,int *,int ) ;} ;
struct node_baton {struct revision_baton* rb; } ;


 int * SVN_NO_ERROR ;
 int stub1 (int ,int *,int ) ;
 int svn_pool_clear (int ) ;
 int * svn_repos_notify_create (int ,int ) ;
 int svn_repos_notify_load_node_done ;

__attribute__((used)) static svn_error_t *
close_node(void *baton)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  struct parse_baton *pb = rb->pb;


  if (rb->skipped)
    return SVN_NO_ERROR;

  if (pb->notify_func)
    {

      svn_repos_notify_t *notify = svn_repos_notify_create(
                                            svn_repos_notify_load_node_done,
                                            pb->notify_pool);

      pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
      svn_pool_clear(pb->notify_pool);
    }

  return SVN_NO_ERROR;
}

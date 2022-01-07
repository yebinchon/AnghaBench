
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int old_revision; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int svn_error_t ;
struct revision_baton {int rev; scalar_t__ skipped; } ;
struct parse_baton {int notify_pool; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int ) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 struct revision_baton* make_revision_baton (int *,struct parse_baton*,int *) ;
 int stub1 (int ,TYPE_1__*,int ) ;
 int svn_pool_clear (int ) ;
 TYPE_1__* svn_repos_notify_create (int ,int ) ;
 int svn_repos_notify_load_skipped_rev ;

__attribute__((used)) static svn_error_t *
revprops_new_revision_record(void **revision_baton,
                             apr_hash_t *headers,
                             void *parse_baton,
                             apr_pool_t *pool)
{
  struct parse_baton *pb = parse_baton;
  struct revision_baton *rb;

  rb = make_revision_baton(headers, pb, pool);


  if (rb->skipped && pb->notify_func)
    {

      svn_repos_notify_t *notify = svn_repos_notify_create(
                                        svn_repos_notify_load_skipped_rev,
                                        pb->notify_pool);

      notify->old_revision = rb->rev;
      pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
      svn_pool_clear(pb->notify_pool);
    }






  *revision_baton = rb;
  return SVN_NO_ERROR;
}

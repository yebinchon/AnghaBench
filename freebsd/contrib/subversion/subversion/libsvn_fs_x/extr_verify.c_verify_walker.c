
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int iteration_count; scalar_t__ last_notified_revision; int notify_baton; int (* notify_func ) (scalar_t__,int ,int *) ;} ;
typedef TYPE_2__ verify_walker_baton_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_6__ {int change_set; } ;
struct TYPE_8__ {TYPE_1__ id; } ;
typedef TYPE_3__ svn_fs_x__representation_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (scalar_t__,int ,int *) ;
 int svn_fs_x__check_rep (TYPE_3__*,int *,int *) ;
 scalar_t__ svn_fs_x__get_revnum (int ) ;

__attribute__((used)) static svn_error_t *
verify_walker(svn_fs_x__representation_t *rep,
              void *baton,
              svn_fs_t *fs,
              apr_pool_t *scratch_pool)
{
  verify_walker_baton_t *walker_baton = baton;


  if (walker_baton->iteration_count > 1000)
    {
      svn_revnum_t revision = svn_fs_x__get_revnum(rep->id.change_set);
      if ( walker_baton->notify_func
          && revision != walker_baton->last_notified_revision)
        {
          walker_baton->notify_func(revision,
                                    walker_baton->notify_baton,
                                    scratch_pool);
          walker_baton->last_notified_revision = revision;
        }

      walker_baton->iteration_count = 0;
    }


  SVN_ERR(svn_fs_x__check_rep(rep, fs, scratch_pool));


  walker_baton->iteration_count++;

  return SVN_NO_ERROR;
}

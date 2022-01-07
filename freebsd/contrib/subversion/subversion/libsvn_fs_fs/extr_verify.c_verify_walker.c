
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iteration_count; int file_count; scalar_t__ last_notified_revision; void* hint; int pool; int notify_baton; int (* notify_func ) (scalar_t__,int ,int *) ;} ;
typedef TYPE_1__ verify_walker_baton_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ revision; } ;
typedef TYPE_2__ representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (scalar_t__,int ,int *) ;
 int svn_fs_fs__check_rep (TYPE_2__*,int *,void**,int ) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_error_t *
verify_walker(representation_t *rep,
              void *baton,
              svn_fs_t *fs,
              apr_pool_t *scratch_pool)
{
  verify_walker_baton_t *walker_baton = baton;
  void *previous_hint;


  if ( walker_baton->iteration_count > 1000
      || walker_baton->file_count > 16)
    {
      if ( walker_baton->notify_func
          && rep->revision != walker_baton->last_notified_revision)
        {
          walker_baton->notify_func(rep->revision,
                                    walker_baton->notify_baton,
                                    scratch_pool);
          walker_baton->last_notified_revision = rep->revision;
        }

      svn_pool_clear(walker_baton->pool);

      walker_baton->iteration_count = 0;
      walker_baton->file_count = 0;
      walker_baton->hint = ((void*)0);
    }


  previous_hint = walker_baton->hint;
  SVN_ERR(svn_fs_fs__check_rep(rep, fs, &walker_baton->hint,
                               walker_baton->pool));


  walker_baton->iteration_count++;
  if (previous_hint != walker_baton->hint)
    walker_baton->file_count++;

  return SVN_NO_ERROR;
}

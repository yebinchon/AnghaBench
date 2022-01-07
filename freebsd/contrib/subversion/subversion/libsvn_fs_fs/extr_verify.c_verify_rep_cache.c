
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; void* notify_baton; int (* notify_func ) (int ,void*,int ) ;int last_notified_revision; } ;
typedef TYPE_1__ verify_walker_baton_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int (* svn_fs_progress_notify_func_t ) (int ,void*,int ) ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_fs_fs__exists_rep_cache (scalar_t__*,int *,int *) ;
 int svn_fs_fs__walk_rep_reference (int *,int ,int ,int ,TYPE_1__*,int ,void*,int *) ;
 int svn_pool_create (int *) ;
 int svn_pool_destroy (int ) ;
 int verify_walker ;

__attribute__((used)) static svn_error_t *
verify_rep_cache(svn_fs_t *fs,
                 svn_revnum_t start,
                 svn_revnum_t end,
                 svn_fs_progress_notify_func_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *pool)
{
  svn_boolean_t exists;


  SVN_ERR(svn_fs_fs__exists_rep_cache(&exists, fs, pool));
  if (exists)
    {


      verify_walker_baton_t *baton = apr_pcalloc(pool, sizeof(*baton));
      baton->pool = svn_pool_create(pool);
      baton->last_notified_revision = SVN_INVALID_REVNUM;
      baton->notify_func = notify_func;
      baton->notify_baton = notify_baton;


      if (notify_func)
        notify_func(SVN_INVALID_REVNUM, notify_baton, baton->pool);




      SVN_ERR(svn_fs_fs__walk_rep_reference(fs, start, end,
                                            verify_walker, baton,
                                            cancel_func, cancel_baton,
                                            pool));


      svn_pool_destroy(baton->pool);
    }

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ env; int error_info; scalar_t__ pool; } ;
typedef TYPE_1__ bdb_env_t ;
struct TYPE_7__ {scalar_t__ env; TYPE_5__* error_info; TYPE_1__* bdb; } ;
typedef TYPE_2__ bdb_env_baton_t ;
struct TYPE_8__ {scalar_t__ refcount; int pending_errors; } ;


 int SVN_ERR_ASSERT (int) ;
 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int apr_threadkey_private_set (int *,int ) ;
 int bdb_cache_lock ;
 int free (TYPE_5__*) ;
 int svn_error_clear (int ) ;
 int svn_fs_bdb__close_internal (TYPE_1__*) ;

svn_error_t *
svn_fs_bdb__close(bdb_env_baton_t *bdb_baton)
{
  bdb_env_t *bdb = bdb_baton->bdb;

  SVN_ERR_ASSERT(bdb_baton->env == bdb_baton->bdb->env);
  SVN_ERR_ASSERT(bdb_baton->error_info->refcount > 0);



  bdb_baton->bdb = ((void*)0);





  if (0 == --bdb_baton->error_info->refcount && bdb->pool)
    {
      svn_error_clear(bdb_baton->error_info->pending_errors);




    }


  SVN_MUTEX__WITH_LOCK(bdb_cache_lock, svn_fs_bdb__close_internal(bdb));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {scalar_t__ refcount; int key; int panic; } ;
typedef TYPE_1__ bdb_env_t ;


 int DB_RUNRECOVERY ;
 int SVN_ERR_FS_BERKELEY_DB ;
 int * SVN_NO_ERROR ;
 int apr_hash_set (scalar_t__,int *,int,int *) ;
 scalar_t__ bdb_cache ;
 int * bdb_close (TYPE_1__*) ;
 int db_strerror (int ) ;
 scalar_t__ svn_atomic_read (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
svn_fs_bdb__close_internal(bdb_env_t *bdb)
{
  svn_error_t *err = SVN_NO_ERROR;

  if (--bdb->refcount != 0)
    {



      if (svn_atomic_read(&bdb->panic))
        err = svn_error_create(SVN_ERR_FS_BERKELEY_DB, ((void*)0),
                                db_strerror(DB_RUNRECOVERY));

    }
  else
    {




      if (bdb_cache)
        apr_hash_set(bdb_cache, &bdb->key, sizeof bdb->key, ((void*)0));
      err = bdb_close(bdb);
    }
  return svn_error_trace(err);
}

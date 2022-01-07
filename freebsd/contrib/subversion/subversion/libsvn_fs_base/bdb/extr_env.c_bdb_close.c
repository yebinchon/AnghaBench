
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ pool; TYPE_2__* env; } ;
typedef TYPE_1__ bdb_env_t ;
struct TYPE_7__ {int (* close ) (TYPE_2__*,int ) ;} ;


 int DB_RUNRECOVERY ;
 int SVN_BDB_AUTO_RECOVER ;
 int * SVN_NO_ERROR ;
 int * convert_bdb_error (TYPE_1__*,int) ;
 int free (TYPE_1__*) ;
 int stub1 (TYPE_2__*,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_destroy (scalar_t__) ;

__attribute__((used)) static svn_error_t *
bdb_close(bdb_env_t *bdb)
{
  svn_error_t *err = SVN_NO_ERROR;



  int db_err = bdb->env->close(bdb->env, 0);



  if (db_err && (!SVN_BDB_AUTO_RECOVER || db_err != DB_RUNRECOVERY))
    err = convert_bdb_error(bdb, db_err);



  if (bdb->pool)
    svn_pool_destroy(bdb->pool);
  else
    free(bdb);
  return svn_error_trace(err);
}

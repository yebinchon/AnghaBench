
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int pool; int path; int dbconfig_file; int key; TYPE_2__* env; int path_bdb; } ;
typedef TYPE_1__ bdb_env_t ;
struct TYPE_7__ {int (* set_flags ) (TYPE_2__*,int ,int) ;int (* open ) (TYPE_2__*,int ,int ,int) ;} ;


 int DB_THREAD ;
 int SVN_BDB_AUTO_COMMIT ;
 int SVN_ERR (int ) ;
 int * bdb_cache_key (int *,int *,int ,int ) ;
 int convert_bdb_error (TYPE_1__*,int ) ;
 int stub1 (TYPE_2__*,int ,int ,int) ;
 int stub2 (TYPE_2__*,int ,int) ;

__attribute__((used)) static svn_error_t *
bdb_open(bdb_env_t *bdb, u_int32_t flags, int mode)
{



  SVN_ERR(convert_bdb_error
          (bdb, (bdb->env->open)(bdb->env, bdb->path_bdb, flags, mode)));
  return bdb_cache_key(&bdb->key, &bdb->dbconfig_file,
                       bdb->path, bdb->pool);
}

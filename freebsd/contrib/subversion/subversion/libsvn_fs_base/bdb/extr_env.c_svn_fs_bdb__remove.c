
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int path_bdb; TYPE_2__* env; } ;
typedef TYPE_1__ bdb_env_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int (* remove ) (TYPE_2__*,int ,int ) ;} ;


 int DB_FORCE ;
 int SVN_ERR (int ) ;
 int * convert_bdb_error (TYPE_1__*,int ) ;
 int create_env (TYPE_1__**,char const*,int *) ;
 int stub1 (TYPE_2__*,int ,int ) ;

svn_error_t *
svn_fs_bdb__remove(const char *path, apr_pool_t *pool)
{
  bdb_env_t *bdb;

  SVN_ERR(create_env(&bdb, path, pool));
  return convert_bdb_error
    (bdb, bdb->env->remove(bdb->env, bdb->path_bdb, DB_FORCE));
}

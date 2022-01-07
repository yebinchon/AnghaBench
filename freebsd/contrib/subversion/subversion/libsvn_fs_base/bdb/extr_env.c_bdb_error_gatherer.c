
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int (* user_callback ) (int *,char*) ;int * pending_errors; } ;
typedef TYPE_1__ bdb_error_info_t ;
typedef int bdb_env_t ;
typedef int DB_ENV ;


 int SVN_BDB_ERROR_GATHERER_IGNORE (int const*) ;
 int SVN_ERR_FS_BERKELEY_DB ;
 TYPE_1__* get_error_info (int const*) ;
 int stub1 (int *,char*) ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;

__attribute__((used)) static void
bdb_error_gatherer(const DB_ENV *dbenv, const char *baton, const char *msg)
{


  bdb_error_info_t *error_info = get_error_info((const bdb_env_t *) baton);
  svn_error_t *new_err;

  SVN_BDB_ERROR_GATHERER_IGNORE(dbenv);

  new_err = svn_error_createf(SVN_ERR_FS_BERKELEY_DB, ((void*)0), "bdb: %s", msg);
  if (error_info->pending_errors)
    svn_error_compose(error_info->pending_errors, new_err);
  else
    error_info->pending_errors = new_err;

  if (error_info->user_callback)
    error_info->user_callback(((void*)0), (char *)msg);
}

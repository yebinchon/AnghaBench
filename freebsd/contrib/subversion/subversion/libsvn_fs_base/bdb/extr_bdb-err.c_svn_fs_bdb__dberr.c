
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* error_info; } ;
typedef TYPE_2__ bdb_env_baton_t ;
struct TYPE_4__ {int * pending_errors; } ;


 int bdb_err_to_apr_err (int) ;
 int db_strerror (int) ;
 int * svn_error_create (int ,int *,int ) ;

svn_error_t *
svn_fs_bdb__dberr(bdb_env_baton_t *bdb_baton, int db_err)
{
  svn_error_t *child_errors;

  child_errors = bdb_baton->error_info->pending_errors;
  bdb_baton->error_info->pending_errors = ((void*)0);

  return svn_error_create(bdb_err_to_apr_err(db_err), child_errors,
                          db_strerror(db_err));
}

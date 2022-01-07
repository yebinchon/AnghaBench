
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int env; } ;
typedef TYPE_1__ bdb_env_t ;
struct TYPE_7__ {int error_info; TYPE_1__* bdb; int env; } ;
typedef TYPE_2__ bdb_env_baton_t ;


 int SVN_BDB_ERR (TYPE_2__*,int) ;
 int * SVN_NO_ERROR ;
 int get_error_info (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
convert_bdb_error(bdb_env_t *bdb, int db_err)
{
  if (db_err)
    {
      bdb_env_baton_t bdb_baton;
      bdb_baton.env = bdb->env;
      bdb_baton.bdb = bdb;
      bdb_baton.error_info = get_error_info(bdb);
      SVN_BDB_ERR(&bdb_baton, db_err);
    }
  return SVN_NO_ERROR;
}

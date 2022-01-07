
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nbr_statements; TYPE_2__** prepared_stmts; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ needs_reset; } ;


 int SVN_ERR_SQLITE_RESETTING_FOR_ROLLBACK ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_error_create (int ,int *,int *) ;
 int svn_sqlite__reset (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
reset_all_statements(svn_sqlite__db_t *db,
                     svn_error_t *error_to_wrap)
{
  int i;
  svn_error_t *err;




  err = svn_error_compose_create(error_to_wrap,
                   svn_error_create(SVN_ERR_SQLITE_RESETTING_FOR_ROLLBACK,
                                    ((void*)0), ((void*)0)));

  for (i = 0; i < db->nbr_statements; i++)
    if (db->prepared_stmts[i] && db->prepared_stmts[i]->needs_reset)
      err = svn_error_compose_create(err,
                                svn_sqlite__reset(db->prepared_stmts[i]));

  return err;
}

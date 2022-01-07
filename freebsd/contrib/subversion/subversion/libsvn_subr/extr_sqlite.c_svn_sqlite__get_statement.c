
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ needs_reset; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
struct TYPE_9__ {int nbr_statements; TYPE_1__** prepared_stmts; int state_pool; int * statement_strings; } ;
typedef TYPE_2__ svn_sqlite__db_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int prepare_statement (TYPE_1__**,TYPE_2__*,int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__reset (TYPE_1__*) ;

svn_error_t *
svn_sqlite__get_statement(svn_sqlite__stmt_t **stmt, svn_sqlite__db_t *db,
                          int stmt_idx)
{
  SVN_ERR_ASSERT(stmt_idx < db->nbr_statements);

  if (db->prepared_stmts[stmt_idx] == ((void*)0))
    SVN_ERR(prepare_statement(&db->prepared_stmts[stmt_idx], db,
                              db->statement_strings[stmt_idx],
                              db->state_pool));

  *stmt = db->prepared_stmts[stmt_idx];

  if ((*stmt)->needs_reset)
    return svn_error_trace(svn_sqlite__reset(*stmt));

  return SVN_NO_ERROR;
}

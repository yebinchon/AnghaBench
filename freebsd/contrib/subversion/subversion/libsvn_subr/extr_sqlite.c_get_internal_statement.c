
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
struct TYPE_4__ {int nbr_statements; int ** prepared_stmts; int state_pool; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;


 int STMT_INTERNAL_LAST ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int * internal_statements ;
 int prepare_statement (int **,TYPE_1__*,int ,int ) ;

__attribute__((used)) static svn_error_t *
get_internal_statement(svn_sqlite__stmt_t **stmt, svn_sqlite__db_t *db,
                       int stmt_idx)
{

  int prep_idx = db->nbr_statements + stmt_idx;
  SVN_ERR_ASSERT(stmt_idx < STMT_INTERNAL_LAST);

  if (db->prepared_stmts[prep_idx] == ((void*)0))
    SVN_ERR(prepare_statement(&db->prepared_stmts[prep_idx], db,
                              internal_statements[stmt_idx],
                              db->state_pool));

  *stmt = db->prepared_stmts[prep_idx];

  return SVN_NO_ERROR;
}

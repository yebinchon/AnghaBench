
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ tree_conflict_data; int prop_reject; int conflict_new; int conflict_working; int conflict_old; int local_relpath; int changelist; int properties; int parent_relpath; int wc_id; } ;
typedef TYPE_2__ db_actual_node_t ;
typedef int apr_pool_t ;


 int STMT_INSERT_ACTUAL_NODE ;
 int SVN_ERR (int ) ;
 int strlen (scalar_t__) ;
 int * svn_error_trace (int ) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;
 int svn_sqlite__bind_blob (int *,int,int ,int ) ;
 int svn_sqlite__bind_int64 (int *,int,int ) ;
 int svn_sqlite__bind_properties (int *,int,int ,int *) ;
 int svn_sqlite__bind_text (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 int svn_wc__upgrade_conflict_skel_from_raw (int **,int *,char const*,int ,int ,int ,int ,int ,scalar_t__,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
insert_actual_node(svn_sqlite__db_t *sdb,
                   svn_wc__db_t *db,
                   const char *wri_abspath,
                   const db_actual_node_t *actual_node,
                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_skel_t *conflict_data = ((void*)0);

  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_INSERT_ACTUAL_NODE));

  SVN_ERR(svn_sqlite__bind_int64(stmt, 1, actual_node->wc_id));
  SVN_ERR(svn_sqlite__bind_text(stmt, 2, actual_node->local_relpath));
  SVN_ERR(svn_sqlite__bind_text(stmt, 3, actual_node->parent_relpath));

  if (actual_node->properties)
    SVN_ERR(svn_sqlite__bind_properties(stmt, 4, actual_node->properties,
                                        scratch_pool));

  if (actual_node->changelist)
    SVN_ERR(svn_sqlite__bind_text(stmt, 5, actual_node->changelist));

  SVN_ERR(svn_wc__upgrade_conflict_skel_from_raw(
                                &conflict_data,
                                db, wri_abspath,
                                actual_node->local_relpath,
                                actual_node->conflict_old,
                                actual_node->conflict_working,
                                actual_node->conflict_new,
                                actual_node->prop_reject,
                                actual_node->tree_conflict_data,
                                actual_node->tree_conflict_data
                                    ? strlen(actual_node->tree_conflict_data)
                                    : 0,
                                scratch_pool, scratch_pool));

  if (conflict_data)
    {
      svn_stringbuf_t *data = svn_skel__unparse(conflict_data, scratch_pool);

      SVN_ERR(svn_sqlite__bind_blob(stmt, 6, data->data, data->len));
    }


  return svn_error_trace(svn_sqlite__insert(((void*)0), stmt));
}

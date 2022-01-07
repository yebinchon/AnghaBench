
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_sqlite__func_t ;
struct TYPE_4__ {int db3; int state_pool; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct function_wrapper_baton_t {void* baton; int func; } ;


 int SQLITE_ANY ;
 int SQLITE_DETERMINISTIC ;
 int SQLITE_ERR (int ,TYPE_1__*) ;
 int * SVN_NO_ERROR ;
 struct function_wrapper_baton_t* apr_pcalloc (int ,int) ;
 int sqlite3_create_function (int ,char const*,int,int,struct function_wrapper_baton_t*,int ,int *,int *) ;
 int wrapped_func ;

svn_error_t *
svn_sqlite__create_scalar_function(svn_sqlite__db_t *db,
                                   const char *func_name,
                                   int argc,
                                   svn_boolean_t deterministic,
                                   svn_sqlite__func_t func,
                                   void *baton)
{
  int eTextRep;
  struct function_wrapper_baton_t *fwb = apr_pcalloc(db->state_pool,
                                                     sizeof(*fwb));

  fwb->func = func;
  fwb->baton = baton;

  eTextRep = SQLITE_ANY;
  if (deterministic)
    eTextRep |= SQLITE_DETERMINISTIC;

  SQLITE_ERR(sqlite3_create_function(db->db3, func_name, argc, eTextRep,
                                     fwb, wrapped_func, ((void*)0), ((void*)0)),
             db);

  return SVN_NO_ERROR;
}

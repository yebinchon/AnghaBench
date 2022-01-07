
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
struct with_triggers_baton_t {int drop_trigger; int cb_baton; int * (* cb_func ) (int ,TYPE_1__*,char const*,int *) ;int create_trigger; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * stub1 (int ,TYPE_1__*,char const*,int *) ;
 int svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_sqlite__exec_statements (int ,int ) ;

__attribute__((used)) static svn_error_t *
with_triggers(void *baton,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *scratch_pool)
{
  struct with_triggers_baton_t *b = baton;
  svn_error_t *err1;
  svn_error_t *err2;

  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb, b->create_trigger));

  err1 = b->cb_func(b->cb_baton, wcroot, local_relpath, scratch_pool);

  err2 = svn_sqlite__exec_statements(wcroot->sdb, b->drop_trigger);

  return svn_error_trace(svn_error_compose_create(err1, err2));
}

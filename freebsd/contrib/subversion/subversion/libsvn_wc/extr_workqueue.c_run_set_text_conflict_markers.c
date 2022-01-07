
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int work_item_baton_t ;
typedef int svn_wc__db_t ;
struct TYPE_10__ {scalar_t__ len; int data; struct TYPE_10__* next; TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {TYPE_2__* next; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,int ,scalar_t__) ;
 int svn_wc__conflict_skel_add_text_conflict (TYPE_2__*,int *,char const*,char const*,char const*,char const*,int *,int *) ;
 TYPE_2__* svn_wc__conflict_skel_create (int *) ;
 int svn_wc__conflict_skel_set_op_update (TYPE_2__*,int *,int *,int *,int *) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;
 int svn_wc__db_op_mark_conflict (int *,char const*,TYPE_2__*,int *,int *) ;
 int svn_wc__db_read_conflict (TYPE_2__**,int *,int *,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_set_text_conflict_markers(work_item_baton_t *wqb,
                              svn_wc__db_t *db,
                              const svn_skel_t *work_item,
                              const char *wri_abspath,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg = work_item->children->next;
  const char *local_relpath;
  const char *local_abspath;
  const char *old_abspath = ((void*)0);
  const char *new_abspath = ((void*)0);
  const char *wrk_abspath = ((void*)0);

  local_relpath = apr_pstrmemdup(scratch_pool, arg->data, arg->len);
  SVN_ERR(svn_wc__db_from_relpath(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  arg = arg->next;
  local_relpath = arg->len ? apr_pstrmemdup(scratch_pool, arg->data, arg->len)
                           : ((void*)0);

  if (local_relpath)
    {
      SVN_ERR(svn_wc__db_from_relpath(&old_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }

  arg = arg->next;
  local_relpath = arg->len ? apr_pstrmemdup(scratch_pool, arg->data, arg->len)
                           : ((void*)0);
  if (local_relpath)
    {
      SVN_ERR(svn_wc__db_from_relpath(&new_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }

  arg = arg->next;
  local_relpath = arg->len ? apr_pstrmemdup(scratch_pool, arg->data, arg->len)
                           : ((void*)0);

  if (local_relpath)
    {
      SVN_ERR(svn_wc__db_from_relpath(&wrk_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }
  {

    svn_skel_t *conflicts;

    SVN_ERR(svn_wc__db_read_conflict(&conflicts, ((void*)0), ((void*)0), db, local_abspath,
                                     scratch_pool, scratch_pool));

    if (! conflicts)
      {

        conflicts = svn_wc__conflict_skel_create(scratch_pool);

        SVN_ERR(svn_wc__conflict_skel_set_op_update(conflicts, ((void*)0), ((void*)0),
                                                    scratch_pool,
                                                    scratch_pool));
      }


    SVN_ERR(svn_wc__conflict_skel_add_text_conflict(conflicts, db,
                                                    local_abspath,
                                                    wrk_abspath,
                                                    old_abspath,
                                                    new_abspath,
                                                    scratch_pool,
                                                    scratch_pool));

    SVN_ERR(svn_wc__db_op_mark_conflict(db, local_abspath, conflicts,
                                        ((void*)0), scratch_pool));
  }
  return SVN_NO_ERROR;
}

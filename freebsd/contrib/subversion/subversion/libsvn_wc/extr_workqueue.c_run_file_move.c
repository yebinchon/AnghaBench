
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int work_item_baton_t ;
typedef int svn_wc__db_t ;
struct TYPE_14__ {TYPE_2__* next; int len; int data; TYPE_1__* children; } ;
typedef TYPE_3__ svn_skel_t ;
struct TYPE_15__ {int apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int len; int data; } ;
struct TYPE_12__ {TYPE_3__* next; } ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int SVN_ERR (TYPE_4__*) ;
 TYPE_4__* SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_io_file_move (char const*,char const*,int *) ;
 TYPE_4__* svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_file_move(work_item_baton_t *wqb,
              svn_wc__db_t *db,
              const svn_skel_t *work_item,
              const char *wri_abspath,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const char *src_abspath, *dst_abspath;
  const char *local_relpath;
  svn_error_t *err;

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->data, arg1->len);
  SVN_ERR(svn_wc__db_from_relpath(&src_abspath, db, wri_abspath, local_relpath,
                                  scratch_pool, scratch_pool));
  local_relpath = apr_pstrmemdup(scratch_pool, arg1->next->data,
                                 arg1->next->len);
  SVN_ERR(svn_wc__db_from_relpath(&dst_abspath, db, wri_abspath, local_relpath,
                                  scratch_pool, scratch_pool));




  err = svn_io_file_move(src_abspath, dst_abspath, scratch_pool);


  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    svn_error_clear(err);
  else
    SVN_ERR(err);

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int work_item_baton_t ;
typedef int svn_wc__db_t ;
typedef int svn_subst_eol_style_t ;
struct TYPE_9__ {TYPE_3__* next; int len; int data; TYPE_1__* children; } ;
typedef TYPE_4__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {TYPE_2__* next; int len; int data; } ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_6__ {TYPE_4__* next; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int svn_subst_copy_and_translate4 (char const*,char const*,char const*,int ,int *,int ,int ,int ,void*,int *) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;
 int svn_wc__get_translate_info (int *,char const**,int **,int *,int *,char const*,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_file_copy_translated(work_item_baton_t *wqb,
                         svn_wc__db_t *db,
                         const svn_skel_t *work_item,
                         const char *wri_abspath,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const char *local_abspath, *src_abspath, *dst_abspath;
  const char *local_relpath;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  svn_boolean_t special;

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->data, arg1->len);
  SVN_ERR(svn_wc__db_from_relpath(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->next->data,
                               arg1->next->len);
  SVN_ERR(svn_wc__db_from_relpath(&src_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->next->next->data,
                                arg1->next->next->len);
  SVN_ERR(svn_wc__db_from_relpath(&dst_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__get_translate_info(&style, &eol,
                                     &keywords,
                                     &special,
                                     db, local_abspath, ((void*)0), FALSE,
                                     scratch_pool, scratch_pool));

  SVN_ERR(svn_subst_copy_and_translate4(src_abspath, dst_abspath,
                                        eol, TRUE ,
                                        keywords, TRUE ,
                                        special,
                                        cancel_func, cancel_baton,
                                        scratch_pool));
  return SVN_NO_ERROR;
}

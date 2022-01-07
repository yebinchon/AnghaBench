
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int work_item_baton_t ;
typedef int svn_wc__db_t ;
struct TYPE_5__ {scalar_t__ next; int len; int data; TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
struct TYPE_4__ {TYPE_2__* next; } ;


 int SVN_ERR (int ) ;
 int TRUE ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int get_and_record_fileinfo (int *,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_check_special_path (char const*,scalar_t__*,int *,int *) ;
 int svn_io_set_file_affected_time (scalar_t__,char const*,int *) ;
 scalar_t__ svn_node_file ;
 int svn_skel__parse_int (scalar_t__*,scalar_t__,int *) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_record_fileinfo(work_item_baton_t *wqb,
                    svn_wc__db_t *db,
                    const svn_skel_t *work_item,
                    const char *wri_abspath,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const char *local_relpath;
  const char *local_abspath;
  apr_time_t set_time = 0;

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->data, arg1->len);

  SVN_ERR(svn_wc__db_from_relpath(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  if (arg1->next)
    {
      apr_int64_t val;

      SVN_ERR(svn_skel__parse_int(&val, arg1->next, scratch_pool));
      set_time = (apr_time_t)val;
    }

  if (set_time != 0)
    {
      svn_node_kind_t kind;
      svn_boolean_t is_special;


      SVN_ERR(svn_io_check_special_path(local_abspath, &kind, &is_special,
                                        scratch_pool));



      if (kind == svn_node_file && !is_special)
        SVN_ERR(svn_io_set_file_affected_time(set_time, local_abspath,
                                              scratch_pool));



    }


  return svn_error_trace(get_and_record_fileinfo(wqb, local_abspath,
                                                 TRUE ,
                                                 scratch_pool));
}

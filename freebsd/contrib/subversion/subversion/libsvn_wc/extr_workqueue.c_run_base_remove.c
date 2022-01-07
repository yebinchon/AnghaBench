
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int work_item_baton_t ;
typedef int svn_wc__db_t ;
struct TYPE_6__ {TYPE_3__* next; int len; int data; TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_5__ {TYPE_2__* next; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__VERSION ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int svn_skel__parse_int (scalar_t__*,TYPE_3__*,int *) ;
 int svn_wc__db_base_get_info (int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_base_remove (int *,char const*,int ,int ,int ,scalar_t__,int *,int *,int *) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_base_remove(work_item_baton_t *wqb,
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
  svn_revnum_t not_present_rev = SVN_INVALID_REVNUM;
  apr_int64_t val;

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->data, arg1->len);
  SVN_ERR(svn_wc__db_from_relpath(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));
  SVN_ERR(svn_skel__parse_int(&val, arg1->next, scratch_pool));

  if (arg1->next->next)
    {
      not_present_rev = (svn_revnum_t)val;

      SVN_ERR(svn_skel__parse_int(&val, arg1->next->next, scratch_pool));
    }
  else
    {
      svn_boolean_t keep_not_present;

      SVN_ERR_ASSERT(SVN_WC__VERSION <= 28);

      keep_not_present = (val != 0);

      if (keep_not_present)
        {
          SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0),
                                           &not_present_rev, ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0),
                                           db, local_abspath,
                                           scratch_pool, scratch_pool));
        }
    }

  SVN_ERR(svn_wc__db_base_remove(db, local_abspath,
                                 FALSE ,
                                 SVN_IS_VALID_REVNUM(not_present_rev), FALSE,
                                 not_present_rev,
                                 ((void*)0), ((void*)0), scratch_pool));

  return SVN_NO_ERROR;
}

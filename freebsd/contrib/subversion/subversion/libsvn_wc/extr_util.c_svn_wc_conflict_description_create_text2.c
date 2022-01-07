
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reason; int action; int kind; int node_kind; int local_abspath; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_node_file ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_kind_text ;
 int svn_wc_conflict_reason_edited ;

svn_wc_conflict_description2_t *
svn_wc_conflict_description_create_text2(const char *local_abspath,
                                         apr_pool_t *result_pool)
{
  svn_wc_conflict_description2_t *conflict;

  SVN_ERR_ASSERT_NO_RETURN(svn_dirent_is_absolute(local_abspath));

  conflict = apr_pcalloc(result_pool, sizeof(*conflict));
  conflict->local_abspath = apr_pstrdup(result_pool, local_abspath);
  conflict->node_kind = svn_node_file;
  conflict->kind = svn_wc_conflict_kind_text;
  conflict->action = svn_wc_conflict_action_edit;
  conflict->reason = svn_wc_conflict_reason_edited;
  return conflict;
}

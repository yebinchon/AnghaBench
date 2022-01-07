
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_conflict_result_t ;
struct TYPE_3__ {int kind; int local_abspath; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef scalar_t__ svn_wc_conflict_choice_t ;
typedef int svn_error_t ;
struct conflict_func_merge_cmd_baton {int accept_which; int conflict_stats; int path_prefix; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_cl__conflict_stats_resolved (int ,char const*,int ) ;
 char* svn_cl__local_style_skip_ancestor (int ,int ,int *) ;
 scalar_t__ svn_wc_conflict_choose_base ;
 scalar_t__ svn_wc_conflict_choose_merged ;
 scalar_t__ svn_wc_conflict_choose_mine_conflict ;
 scalar_t__ svn_wc_conflict_choose_mine_full ;
 scalar_t__ svn_wc_conflict_choose_postpone ;
 scalar_t__ svn_wc_conflict_choose_theirs_conflict ;
 scalar_t__ svn_wc_conflict_choose_theirs_full ;
 int * svn_wc_create_conflict_result (scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
conflict_func_merge_cmd(svn_wc_conflict_result_t **result,
                        const svn_wc_conflict_description2_t *desc,
                        void *baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  struct conflict_func_merge_cmd_baton *b = baton;
  svn_wc_conflict_choice_t choice;

  switch (b->accept_which)
    {
    case 133:
    case 137:
    case 129:
    case 132:

      choice = svn_wc_conflict_choose_postpone;
      break;
    case 139:
      choice = svn_wc_conflict_choose_base;
      break;
    case 128:
      choice = svn_wc_conflict_choose_merged;
      break;
    case 135:
      choice = svn_wc_conflict_choose_mine_conflict;
      break;
    case 131:
      choice = svn_wc_conflict_choose_theirs_conflict;
      break;
    case 134:
      choice = svn_wc_conflict_choose_mine_full;
      break;
    case 130:
      choice = svn_wc_conflict_choose_theirs_full;
      break;
    case 138:
    case 136:


      choice = svn_wc_conflict_choose_postpone;
      break;
    }

  *result = svn_wc_create_conflict_result(choice, ((void*)0), result_pool);


  if (choice != svn_wc_conflict_choose_postpone)
    {
      const char *local_path;

      local_path = svn_cl__local_style_skip_ancestor(b->path_prefix,
                                                     desc->local_abspath,
                                                     scratch_pool);
      svn_cl__conflict_stats_resolved(b->conflict_stats, local_path,
                                      desc->kind);
    }

  return SVN_NO_ERROR;
}

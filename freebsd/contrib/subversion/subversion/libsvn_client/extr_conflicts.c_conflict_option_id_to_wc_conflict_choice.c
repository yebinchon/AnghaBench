
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_choice_t ;
typedef int svn_client_conflict_option_id_t ;
 int svn_wc_conflict_choose_base ;
 int svn_wc_conflict_choose_merged ;
 int svn_wc_conflict_choose_mine_conflict ;
 int svn_wc_conflict_choose_mine_full ;
 int svn_wc_conflict_choose_postpone ;
 int svn_wc_conflict_choose_theirs_conflict ;
 int svn_wc_conflict_choose_theirs_full ;
 int svn_wc_conflict_choose_undefined ;
 int svn_wc_conflict_choose_unspecified ;

__attribute__((used)) static svn_wc_conflict_choice_t
conflict_option_id_to_wc_conflict_choice(
  svn_client_conflict_option_id_t option_id)
{

  switch (option_id)
    {
      case 131:
        return svn_wc_conflict_choose_undefined;

      case 132:
        return svn_wc_conflict_choose_postpone;

      case 136:
        return svn_wc_conflict_choose_base;

      case 135:
        return svn_wc_conflict_choose_theirs_full;

      case 129:
        return svn_wc_conflict_choose_mine_full;

      case 134:
        return svn_wc_conflict_choose_theirs_conflict;

      case 128:
        return svn_wc_conflict_choose_mine_conflict;

      case 133:
        return svn_wc_conflict_choose_merged;

      case 130:
        return svn_wc_conflict_choose_unspecified;

      default:
        break;
    }

  return svn_wc_conflict_choose_undefined;
}

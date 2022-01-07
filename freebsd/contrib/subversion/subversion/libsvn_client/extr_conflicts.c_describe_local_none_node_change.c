
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int svn_client_conflict_get_local_change (int *) ;
 int svn_client_conflict_get_operation (int *) ;
 int svn_wc_operation_merge ;
 int svn_wc_operation_switch ;
 int svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
describe_local_none_node_change(const char **description,
                                svn_client_conflict_t *conflict,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t local_change;
  svn_wc_operation_t operation;

  local_change = svn_client_conflict_get_local_change(conflict);
  operation = svn_client_conflict_get_operation(conflict);

  switch (local_change)
    {
    case 134:
      *description = _("An item containing uncommitted changes was "
                       "found in the working copy.");
      break;
    case 130:
      *description = _("An item which already occupies this path was found in "
                       "the working copy.");
      break;
    case 135:
      *description = _("A deleted item was found in the working copy.");
      break;
    case 133:
      if (operation == svn_wc_operation_update ||
          operation == svn_wc_operation_switch)
        *description = _("No such file or directory was found in the "
                         "working copy.");
      else if (operation == svn_wc_operation_merge)
        {

          *description = _("No such file or directory was found in the "
                           "merge target working copy.\nThe item may "
                           "have been deleted or moved away in the "
                           "repository's history.");
        }
      break;
    case 128:
      *description = _("An unversioned item was found in the working "
                       "copy.");
      break;
    case 136:
    case 129:
      *description = _("An item scheduled to be added to the repository "
                       "in the next commit was found in the working "
                       "copy.");
      break;
    case 132:
      *description = _("The item in the working copy had been moved "
                       "away at the time this conflict was recorded.");
      break;
    case 131:
      *description = _("An item had been moved here in the working copy "
                       "at the time this conflict was recorded.");
      break;
    }

  return SVN_NO_ERROR;
}

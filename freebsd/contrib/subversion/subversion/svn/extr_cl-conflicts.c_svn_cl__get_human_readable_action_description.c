
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_action_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (char const*) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_psprintf (int *,int ,char const*,char const*) ;
 char* incoming_action_str (int ,int ) ;
 char* operation_str (int ) ;

svn_error_t *
svn_cl__get_human_readable_action_description(
        const char **desc,
        svn_wc_conflict_action_t action,
        svn_wc_operation_t operation,
        svn_node_kind_t kind,
        apr_pool_t *pool)
{
  const char *action_s, *operation_s;

  action_s = incoming_action_str(kind, action);
  operation_s = operation_str(operation);

  SVN_ERR_ASSERT(operation_s);

  *desc = apr_psprintf(pool, _("%s %s"),
                       action_s, operation_s);

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ node_status; scalar_t__ text_status; scalar_t__ prop_status; int versioned; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
struct can_delete_baton_t {int target_missing; int root_abspath; } ;
typedef int apr_pool_t ;


 int SVN_ERR_CLIENT_MODIFIED ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int SVN_ERR_UNVERSIONED_RESOURCE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_wc_status_added ;
 scalar_t__ svn_wc_status_deleted ;
 scalar_t__ svn_wc_status_missing ;
 scalar_t__ svn_wc_status_none ;
 scalar_t__ svn_wc_status_normal ;
 scalar_t__ svn_wc_status_obstructed ;
 scalar_t__ svn_wc_status_replaced ;

__attribute__((used)) static svn_error_t *
find_undeletables(void *baton,
                  const char *local_abspath,
                  const svn_wc_status3_t *status,
                  apr_pool_t *pool)
{
  if (status->node_status == svn_wc_status_missing)
    {
      struct can_delete_baton_t *cdt = baton;

      if (strcmp(cdt->root_abspath, local_abspath) == 0)
        cdt->target_missing = TRUE;
    }


  if (status->node_status == svn_wc_status_obstructed)
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("'%s' is in the way of the resource "
                               "actually under version control"),
                             svn_dirent_local_style(local_abspath, pool));
  else if (! status->versioned)
    return svn_error_createf(SVN_ERR_UNVERSIONED_RESOURCE, ((void*)0),
                             _("'%s' is not under version control"),
                             svn_dirent_local_style(local_abspath, pool));
  else if ((status->node_status == svn_wc_status_added
            || status->node_status == svn_wc_status_replaced)
           && status->text_status == svn_wc_status_normal
           && (status->prop_status == svn_wc_status_normal
               || status->prop_status == svn_wc_status_none))
    {

    }
  else if (status->node_status != svn_wc_status_normal
           && status->node_status != svn_wc_status_deleted
           && status->node_status != svn_wc_status_missing)
    return svn_error_createf(SVN_ERR_CLIENT_MODIFIED, ((void*)0),
                             _("'%s' has local modifications -- commit or "
                               "revert them first"),
                             svn_dirent_local_style(local_abspath, pool));

  return SVN_NO_ERROR;
}

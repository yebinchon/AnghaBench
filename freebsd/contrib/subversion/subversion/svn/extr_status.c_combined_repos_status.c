
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ repos_node_status; int repos_text_status; } ;
typedef TYPE_1__ svn_client_status_t ;
typedef enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;


 scalar_t__ svn_wc_status_modified ;

__attribute__((used)) static enum svn_wc_status_kind
combined_repos_status(const svn_client_status_t *status)
{
  if (status->repos_node_status == svn_wc_status_modified)
    return status->repos_text_status;

  return status->repos_node_status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {TYPE_1__* b; int local_relpath; } ;
typedef TYPE_2__ added_node_baton_t ;
struct TYPE_4__ {int db; int wcroot; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_node_none ;
 int svn_wc_notify_skip ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_state_missing ;
 int svn_wc_notify_state_obstructed ;
 int update_move_list_add (int ,int ,int ,int ,scalar_t__,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
update_local_add_notify_obstructed_or_missing(added_node_baton_t *nb,
                                              svn_node_kind_t working_kind,
                                              svn_node_kind_t kind_on_disk,
                                              apr_pool_t *scratch_pool)
{
  svn_wc_notify_state_t content_state;

  if (kind_on_disk == svn_node_none)
      content_state = svn_wc_notify_state_missing;
  else
      content_state = svn_wc_notify_state_obstructed;

  SVN_ERR(update_move_list_add(nb->b->wcroot, nb->local_relpath, nb->b->db,
                               svn_wc_notify_skip, working_kind,
                               content_state, svn_wc_notify_state_inapplicable,
                               ((void*)0), ((void*)0), scratch_pool));
  return SVN_NO_ERROR;
}

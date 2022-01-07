
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ repos_node_status; scalar_t__ node_status; scalar_t__ moved_to_abspath; scalar_t__ changelist; scalar_t__ lock; scalar_t__ versioned; scalar_t__ switched; scalar_t__ conflicted; scalar_t__ repos_lock; } ;
typedef TYPE_1__ svn_wc_status3_t ;
struct TYPE_5__ {int op_root; TYPE_1__ s; } ;
typedef TYPE_2__ svn_wc__internal_status_t ;
typedef scalar_t__ svn_boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ svn_wc_status_deleted ;
 scalar_t__ svn_wc_status_ignored ;
 scalar_t__ svn_wc_status_none ;
 scalar_t__ svn_wc_status_normal ;
 scalar_t__ svn_wc_status_unversioned ;

__attribute__((used)) static svn_boolean_t
is_sendable_status(const svn_wc__internal_status_t *i_status,
                   svn_boolean_t no_ignore,
                   svn_boolean_t get_all)
{
  const svn_wc_status3_t *status = &i_status->s;

  if (status->repos_node_status != svn_wc_status_none)
    return TRUE;


  if (status->repos_lock)
    return TRUE;

  if (status->conflicted)
    return TRUE;


  if ((status->node_status == svn_wc_status_ignored) && (! no_ignore))
    return FALSE;



  if (get_all)
    return TRUE;


  if (status->node_status == svn_wc_status_unversioned)
    return TRUE;


  if ((status->node_status != svn_wc_status_none)
       && (status->node_status != svn_wc_status_normal)
       && !(status->node_status == svn_wc_status_deleted
            && !i_status->op_root))
    return TRUE;


  if (status->switched)
    return TRUE;


  if (status->versioned && status->lock)
    return TRUE;


  if (status->changelist)
    return TRUE;

  if (status->moved_to_abspath)
    return TRUE;


  return FALSE;
}

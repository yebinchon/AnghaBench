
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eid; scalar_t__ branch_id; int rev; } ;
struct TYPE_5__ {scalar_t__ kind; int target; int text; scalar_t__ props; TYPE_1__ branch_ref; scalar_t__ is_subbranch_root; } ;
typedef TYPE_2__ svn_element__payload_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int TRUE ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;
 scalar_t__ svn_node_unknown ;

svn_boolean_t
svn_element__payload_invariants(const svn_element__payload_t *payload)
{
  if (payload->is_subbranch_root)
    return TRUE;



  if (payload->kind == svn_node_unknown)
    if (SVN_IS_VALID_REVNUM(payload->branch_ref.rev)
        && payload->branch_ref.branch_id
        && payload->branch_ref.eid != -1)
      return TRUE;
  if ((payload->kind == svn_node_dir
       || payload->kind == svn_node_file
       || payload->kind == svn_node_symlink)
      && (payload->props
          && ((payload->kind == svn_node_file) == !!payload->text)
          && ((payload->kind == svn_node_symlink) == !!payload->target)))
    return TRUE;
  return FALSE;
}

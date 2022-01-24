#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_action_t ;
typedef  int svn_node_kind_t ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
#define  svn_node_dir 136 
#define  svn_node_file 135 
#define  svn_node_none 134 
#define  svn_node_symlink 133 
#define  svn_node_unknown 132 
#define  svn_wc_conflict_action_add 131 
#define  svn_wc_conflict_action_delete 130 
#define  svn_wc_conflict_action_edit 129 
#define  svn_wc_conflict_action_replace 128 

__attribute__((used)) static const char *
FUNC1(svn_node_kind_t kind, svn_wc_conflict_action_t action)
{
  switch (kind)
    {
      case svn_node_file:
      case svn_node_symlink:
        switch (action)
          {
            case svn_wc_conflict_action_edit:
              return FUNC0("incoming file edit");
            case svn_wc_conflict_action_add:
              return FUNC0("incoming file add");
            case svn_wc_conflict_action_delete:
              return FUNC0("incoming file delete or move");
            case svn_wc_conflict_action_replace:
              return FUNC0("incoming replace with file");
          }
        break;
      case svn_node_dir:
        switch (action)
          {
            case svn_wc_conflict_action_edit:
              return FUNC0("incoming dir edit");
            case svn_wc_conflict_action_add:
              return FUNC0("incoming dir add");
            case svn_wc_conflict_action_delete:
              return FUNC0("incoming dir delete or move");
            case svn_wc_conflict_action_replace:
              return FUNC0("incoming replace with dir");
          }
        break;
      case svn_node_none:
      case svn_node_unknown:
        switch (action)
          {
            case svn_wc_conflict_action_edit:
              return FUNC0("incoming edit");
            case svn_wc_conflict_action_add:
              return FUNC0("incoming add");
            case svn_wc_conflict_action_delete:
              return FUNC0("incoming delete or move");
            case svn_wc_conflict_action_replace:
              return FUNC0("incoming replace");
          }
        break;
    }
  return NULL;
}
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
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_reason_t ;
typedef  int svn_node_kind_t ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
#define  svn_node_dir 141 
#define  svn_node_file 140 
#define  svn_node_none 139 
#define  svn_node_symlink 138 
#define  svn_node_unknown 137 
#define  svn_wc_conflict_reason_added 136 
#define  svn_wc_conflict_reason_deleted 135 
#define  svn_wc_conflict_reason_edited 134 
#define  svn_wc_conflict_reason_missing 133 
#define  svn_wc_conflict_reason_moved_away 132 
#define  svn_wc_conflict_reason_moved_here 131 
#define  svn_wc_conflict_reason_obstructed 130 
#define  svn_wc_conflict_reason_replaced 129 
#define  svn_wc_conflict_reason_unversioned 128 
 int /*<<< orphan*/  svn_wc_operation_merge ; 

__attribute__((used)) static const char *
FUNC1(svn_node_kind_t kind, svn_wc_conflict_reason_t reason,
                 svn_wc_operation_t operation)
{
  switch (kind)
    {
      case svn_node_file:
      case svn_node_symlink:
        switch (reason)
          {
          case svn_wc_conflict_reason_edited:
            return FUNC0("local file edit");
          case svn_wc_conflict_reason_obstructed:
            return FUNC0("local file obstruction");
          case svn_wc_conflict_reason_deleted:
            return FUNC0("local file delete");
          case svn_wc_conflict_reason_missing:
            if (operation == svn_wc_operation_merge)
              return FUNC0("local file missing or deleted or moved away");
            else
              return FUNC0("local file missing");
          case svn_wc_conflict_reason_unversioned:
            return FUNC0("local file unversioned");
          case svn_wc_conflict_reason_added:
            return FUNC0("local file add");
          case svn_wc_conflict_reason_replaced:
            return FUNC0("local file replace");
          case svn_wc_conflict_reason_moved_away:
            return FUNC0("local file moved away");
          case svn_wc_conflict_reason_moved_here:
            return FUNC0("local file moved here");
          }
        break;
      case svn_node_dir:
        switch (reason)
          {
          case svn_wc_conflict_reason_edited:
            return FUNC0("local dir edit");
          case svn_wc_conflict_reason_obstructed:
            return FUNC0("local dir obstruction");
          case svn_wc_conflict_reason_deleted:
            return FUNC0("local dir delete");
          case svn_wc_conflict_reason_missing:
            if (operation == svn_wc_operation_merge)
              return FUNC0("local dir missing or deleted or moved away");
            else
              return FUNC0("local dir missing");
          case svn_wc_conflict_reason_unversioned:
            return FUNC0("local dir unversioned");
          case svn_wc_conflict_reason_added:
            return FUNC0("local dir add");
          case svn_wc_conflict_reason_replaced:
            return FUNC0("local dir replace");
          case svn_wc_conflict_reason_moved_away:
            return FUNC0("local dir moved away");
          case svn_wc_conflict_reason_moved_here:
            return FUNC0("local dir moved here");
          }
        break;
      case svn_node_none:
      case svn_node_unknown:
        switch (reason)
          {
          case svn_wc_conflict_reason_edited:
            return FUNC0("local edit");
          case svn_wc_conflict_reason_obstructed:
            return FUNC0("local obstruction");
          case svn_wc_conflict_reason_deleted:
            return FUNC0("local delete");
          case svn_wc_conflict_reason_missing:
            if (operation == svn_wc_operation_merge)
              return FUNC0("local missing or deleted or moved away");
            else
              return FUNC0("local missing");
          case svn_wc_conflict_reason_unversioned:
            return FUNC0("local unversioned");
          case svn_wc_conflict_reason_added:
            return FUNC0("local add");
          case svn_wc_conflict_reason_replaced:
            return FUNC0("local replace");
          case svn_wc_conflict_reason_moved_away:
            return FUNC0("local moved away");
          case svn_wc_conflict_reason_moved_here:
            return FUNC0("local moved here");
          }
        break;
    }
  return NULL;
}
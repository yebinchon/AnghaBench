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
typedef  enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  svn_wc_status_added 140 
#define  svn_wc_status_conflicted 139 
#define  svn_wc_status_deleted 138 
#define  svn_wc_status_external 137 
#define  svn_wc_status_ignored 136 
#define  svn_wc_status_incomplete 135 
#define  svn_wc_status_missing 134 
#define  svn_wc_status_modified 133 
#define  svn_wc_status_none 132 
#define  svn_wc_status_normal 131 
#define  svn_wc_status_obstructed 130 
#define  svn_wc_status_replaced 129 
#define  svn_wc_status_unversioned 128 

__attribute__((used)) static const char *
FUNC1(enum svn_wc_status_kind status)
{
  switch (status)
    {
    case svn_wc_status_none:        return "none";
    case svn_wc_status_normal:      return "normal";
    case svn_wc_status_added:       return "added";
    case svn_wc_status_missing:     return "missing";
    case svn_wc_status_incomplete:  return "incomplete";
    case svn_wc_status_deleted:     return "deleted";
    case svn_wc_status_replaced:    return "replaced";
    case svn_wc_status_modified:    return "modified";
    case svn_wc_status_conflicted:  return "conflicted";
    case svn_wc_status_obstructed:  return "obstructed";
    case svn_wc_status_ignored:     return "ignored";
    case svn_wc_status_external:    return "external";
    case svn_wc_status_unversioned: return "unversioned";
    default:
      FUNC0();
    }
}
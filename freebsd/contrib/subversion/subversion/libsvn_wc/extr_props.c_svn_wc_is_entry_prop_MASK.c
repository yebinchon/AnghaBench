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
typedef  int svn_boolean_t ;
typedef  enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;

/* Variables and functions */
 int svn_prop_entry_kind ; 
 int FUNC0 (char const*) ; 

svn_boolean_t
FUNC1(const char *name)
{
  enum svn_prop_kind kind = FUNC0(name);
  return (kind == svn_prop_entry_kind);
}
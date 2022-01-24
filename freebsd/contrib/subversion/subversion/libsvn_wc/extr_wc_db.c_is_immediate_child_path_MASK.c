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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char) ; 
 char* FUNC1 (char const*,char const*) ; 

__attribute__((used)) static svn_boolean_t
FUNC2(const char *parent_abspath, const char *child_abspath)
{
  const char *local_relpath = FUNC1(parent_abspath,
                                                       child_abspath);

  /* To be an immediate child local_relpath should have one (not empty)
     component */
  return local_relpath && *local_relpath && !FUNC0(local_relpath, '/');
}
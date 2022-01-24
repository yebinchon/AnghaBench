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
typedef  size_t apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

const char *
FUNC4(const char *parent_relpath,
                          const char *child_relpath)
{
  apr_size_t len = FUNC2(parent_relpath);

  FUNC0(FUNC1(parent_relpath));
  FUNC0(FUNC1(child_relpath));

  if (len == 0)
    return child_relpath;

  if (0 != FUNC3(parent_relpath, child_relpath, len))
    return NULL; /* parent_relpath is no ancestor of child_relpath */

  if (child_relpath[len] == 0)
    return ""; /* parent_relpath == child_relpath */

  if (child_relpath[len] == '/')
    return child_relpath + len + 1;

  return NULL;
}
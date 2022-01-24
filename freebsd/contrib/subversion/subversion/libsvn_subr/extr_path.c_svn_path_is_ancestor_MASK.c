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
typedef  int apr_size_t ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

svn_boolean_t
FUNC3(const char *path1, const char *path2)
{
  apr_size_t path1_len = FUNC1(path1);

  /* If path1 is empty and path2 is not absoulte, then path1 is an ancestor. */
  if (FUNC0(path1))
    return *path2 != '/';

  /* If path1 is a prefix of path2, then:
     - If path1 ends in a path separator,
     - If the paths are of the same length
     OR
     - path2 starts a new path component after the common prefix,
     then path1 is an ancestor. */
  if (FUNC2(path1, path2, path1_len) == 0)
    return path1[path1_len - 1] == '/'
      || (path2[path1_len] == '/' || path2[path1_len] == '\0');

  return FALSE;
}
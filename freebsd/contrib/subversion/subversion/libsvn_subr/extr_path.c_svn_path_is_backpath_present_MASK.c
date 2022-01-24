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
 int FALSE ; 
 int TRUE ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 

svn_boolean_t
FUNC2(const char *path)
{
  size_t len;

  /* 0 and 1-length paths do not have a backpath */
  if (path[0] == '\0' || path[1] == '\0')
    return FALSE;

  /* Handle ".." or a leading "../" */
  if (path[0] == '.' && path[1] == '.' && (path[2] == '\0' || path[2] == '/'))
    return TRUE;

  /* Paths of length 2 (at this point) have no backpath present. */
  if (path[2] == '\0')
    return FALSE;

  /* If any segment is "..", then a backpath is present. */
  if (FUNC1(path, "/../") != NULL)
    return TRUE;

  /* Does the path end in "/.." ? */
  len = FUNC0(path);
  return path[len - 3] == '/' && path[len - 2] == '.' && path[len - 1] == '.';
}
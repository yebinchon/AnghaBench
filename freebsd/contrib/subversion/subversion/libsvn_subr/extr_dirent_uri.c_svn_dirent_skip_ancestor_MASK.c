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
 size_t FUNC0 (char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

const char *
FUNC3(const char *parent_dirent,
                         const char *child_dirent)
{
  apr_size_t len = FUNC1(parent_dirent);
  apr_size_t root_len;

  if (0 != FUNC2(parent_dirent, child_dirent, len))
    return NULL; /* parent_dirent is no ancestor of child_dirent */

  if (child_dirent[len] == 0)
    return ""; /* parent_dirent == child_dirent */

  /* Child == parent + more-characters */

  root_len = FUNC0(child_dirent, FUNC1(child_dirent));
  if (root_len > len)
    /* Different root, e.g. ("" "/...") or ("//z" "//z/share") */
    return NULL;

  /* Now, child == [root-of-parent] + [rest-of-parent] + more-characters.
   * It must be one of the following forms.
   *
   * rlen parent    child       bad?  rlen=len? c[len]=/?
   *  0   ""        "foo"               *
   *  0   "b"       "bad"         !
   *  0   "b"       "b/foo"                       *
   *  1   "/"       "/foo"              *
   *  1   "/b"      "/bad"        !
   *  1   "/b"      "/b/foo"                      *
   *  2   "a:"      "a:foo"             *
   *  2   "a:b"     "a:bad"       !
   *  2   "a:b"     "a:b/foo"                     *
   *  3   "a:/"     "a:/foo"            *
   *  3   "a:/b"    "a:/bad"      !
   *  3   "a:/b"    "a:/b/foo"                    *
   *  5   "//s/s"   "//s/s/foo"         *         *
   *  5   "//s/s/b" "//s/s/bad"   !
   *  5   "//s/s/b" "//s/s/b/foo"                 *
   */

  if (child_dirent[len] == '/')
    /* "parent|child" is one of:
     * "[a:]b|/foo" "[a:]/b|/foo" "//s/s|/foo" "//s/s/b|/foo" */
    return child_dirent + len + 1;

  if (root_len == len)
    /* "parent|child" is "|foo" "/|foo" "a:|foo" "a:/|foo" "//s/s|/foo" */
    return child_dirent + len;

  return NULL;
}
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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 

__attribute__((used)) static svn_boolean_t
FUNC3(const char *path,
             apr_size_t len)
{
  return (! FUNC0(path, len)
          && FUNC1(path, "/./") == NULL
          && (len == 0
              || (len == 1 && path[0] == '/')
              || (path[len-1] != '/')
#if defined(WIN32) || defined(__CYGWIN__)
              || svn_dirent_is_root(path, len)
#endif
              ));
}
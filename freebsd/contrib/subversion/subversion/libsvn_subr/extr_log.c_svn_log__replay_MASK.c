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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 

const char *
FUNC2(const char *path, svn_revnum_t rev, apr_pool_t *pool)
{
  const char *log_path;

  if (path && path[0] != '\0')
    log_path = FUNC1(path, pool);
  else
    log_path = "/";
  return FUNC0(pool, "replay %s r%ld", log_path, rev);
}
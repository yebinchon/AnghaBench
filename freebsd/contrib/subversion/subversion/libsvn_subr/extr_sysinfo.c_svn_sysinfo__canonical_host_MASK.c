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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *) ; 
 char const* FUNC1 (int /*<<< orphan*/ *) ; 

const char *
FUNC2(apr_pool_t *pool)
{
#ifdef WIN32
  return win32_canonical_host(pool);
#elif HAVE_UNAME
  return canonical_host_from_uname(pool);
#else
  return "unknown-unknown-unknown";
#endif
}
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
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC3(const char *url, const char **tunnel,
                         apr_pool_t *pool)
{
  *tunnel = NULL;

  if (FUNC2(url, "svn", 3) != 0)
    return;
  url += 3;

  /* Get the tunnel specification, if any. */
  if (*url == '+')
    {
      const char *p;

      url++;
      p = FUNC1(url, ':');
      if (!p)
        return;
      *tunnel = FUNC0(pool, url, p - url);
    }
}
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
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 

const char *
FUNC5(const char *uri,
                          apr_pool_t *pool)
{
  if (FUNC1(uri))
    {
      uri = FUNC4(uri, pool);
    }
  else
    {
      uri = FUNC0(uri, pool);
      /* Do a little dance to normalize hex encoding. */
      uri = FUNC2(uri, pool);
      uri = FUNC3(uri, pool);
    }
  return uri;
}
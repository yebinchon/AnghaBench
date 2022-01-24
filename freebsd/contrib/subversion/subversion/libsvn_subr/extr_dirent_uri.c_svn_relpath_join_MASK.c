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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

char *
FUNC6(const char *base,
                 const char *component,
                 apr_pool_t *pool)
{
  apr_size_t blen = FUNC5(base);
  apr_size_t clen = FUNC5(component);
  char *path;

  FUNC2(FUNC4(base));
  FUNC2(FUNC4(component));

  /* If either is empty return the other */
  if (blen == 0)
    return FUNC1(pool, component, clen + 1);
  if (clen == 0)
    return FUNC1(pool, base, blen + 1);

  path = FUNC0(pool, blen + 1 + clen + 1);
  FUNC3(path, base, blen);
  path[blen] = '/';
  FUNC3(path + blen + 1, component, clen + 1);

  return path;
}
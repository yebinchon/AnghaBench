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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC7(const char *base,
                       const char *component,
                       apr_pool_t *pool)
{
  apr_size_t blen = FUNC5(base);
  apr_size_t clen = FUNC5(component);
  char *path;

  FUNC3(FUNC6(base, pool));
  FUNC3(FUNC6(component, pool));

  /* If the component is absolute, then return it.  */
  if (*component == '/')
    return FUNC2(pool, component, clen + 1);

  /* If either is empty return the other */
  if (FUNC0(base))
    return FUNC2(pool, component, clen + 1);
  if (FUNC0(component))
    return FUNC2(pool, base, blen + 1);

  if (blen == 1 && base[0] == '/')
    blen = 0; /* Ignore base, just return separator + component */

  /* Construct the new, combined path. */
  path = FUNC1(pool, blen + 1 + clen + 1);
  FUNC4(path, base, blen);
  path[blen] = '/';
  FUNC4(path + blen + 1, component, clen + 1);

  return path;
}
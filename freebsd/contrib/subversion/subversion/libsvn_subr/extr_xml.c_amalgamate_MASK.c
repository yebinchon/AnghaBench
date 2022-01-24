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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const char **atts,
           apr_hash_t *ht,
           svn_boolean_t preserve,
           apr_pool_t *pool)
{
  const char *key;

  if (atts)
    for (key = *atts; key; key = *(++atts))
      {
        const char *val = *(++atts);
        size_t keylen;
        FUNC4(key != NULL);
        /* kff todo: should we also insist that val be non-null here?
           Probably. */

        keylen = FUNC5(key);
        if (preserve && ((FUNC0(ht, key, keylen)) != NULL))
          continue;
        else
          FUNC1(ht, FUNC3(pool, key, keylen), keylen,
                       val ? FUNC2(pool, val) : NULL);
      }
}
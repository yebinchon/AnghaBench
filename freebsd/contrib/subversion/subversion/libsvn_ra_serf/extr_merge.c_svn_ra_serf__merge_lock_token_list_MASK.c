#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  len; void const* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  SVN_XML_NAMESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,void const*) ; 

void
FUNC9(apr_hash_t *lock_tokens,
                                   const char *parent,
                                   serf_bucket_t *body,
                                   serf_bucket_alloc_t *alloc,
                                   apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  if (!lock_tokens || FUNC0(lock_tokens) == 0)
    return;

  FUNC6(body, alloc,
                                    "S:lock-token-list",
                                    "xmlns:S", SVN_XML_NAMESPACE,
                                    SVN_VA_NULL);

  for (hi = FUNC1(pool, lock_tokens);
       hi;
       hi = FUNC2(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      svn_string_t path;

      FUNC3(hi, &key, &klen, &val);

      path.data = key;
      path.len = klen;

      if (parent && !FUNC8(parent, key))
        continue;

      FUNC6(body, alloc, "S:lock", SVN_VA_NULL);

      FUNC6(body, alloc, "lock-path", SVN_VA_NULL);
      FUNC4(body, alloc, path.data, path.len);
      FUNC5(body, alloc, "lock-path");

      FUNC7(body, "lock-token", val, alloc);

      FUNC5(body, alloc, "S:lock");
    }

  FUNC5(body, alloc, "S:lock-token-list");
}
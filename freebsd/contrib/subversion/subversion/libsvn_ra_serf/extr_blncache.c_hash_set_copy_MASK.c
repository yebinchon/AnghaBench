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
typedef  scalar_t__ apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ APR_HASH_KEY_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 scalar_t__ FUNC3 (void const*) ; 

__attribute__((used)) static void
FUNC4(apr_hash_t *hash,
              const void *key,
              apr_ssize_t klen,
              const void *val)
{
  if (klen == APR_HASH_KEY_STRING)
    klen = FUNC3(key);
  FUNC1(hash, FUNC2(FUNC0(hash), key, klen),
               klen, val);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  combined_key; int /*<<< orphan*/  membuffer; int /*<<< orphan*/  key_len; } ;
typedef  TYPE_1__ svn_membuffer_cache_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_boolean_t *found,
                            void *cache_void,
                            const void *key,
                            apr_pool_t *scratch_pool)
{
  svn_membuffer_cache_t *cache = cache_void;

  /* special case */
  if (key == NULL)
    {
      *found = FALSE;

      return SVN_NO_ERROR;
    }

  /* construct the full, i.e. globally unique, key by adding
   * this cache instances' prefix
   */
  FUNC1(cache, key, cache->key_len);

  /* Look the item up. */
  FUNC0(FUNC2(cache->membuffer,
                                  &cache->combined_key,
                                  found));

  /* return result */
  return SVN_NO_ERROR;
}
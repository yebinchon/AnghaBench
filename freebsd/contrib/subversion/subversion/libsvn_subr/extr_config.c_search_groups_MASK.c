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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct search_groups_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  match; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t FUNC3(const char *name,
                                   const char *value,
                                   void *baton,
                                   apr_pool_t *pool)
{
  struct search_groups_baton *b = baton;
  apr_array_header_t *list;

  list = FUNC2(value, ",", TRUE, pool);
  if (FUNC1(b->key, list))
    {
      /* Fill in the match and return false, to stop enumerating. */
      b->match = FUNC0(b->pool, name);
      return FALSE;
    }
  else
    return TRUE;
}
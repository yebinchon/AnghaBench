#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 

const char *
FUNC10(apr_hash_t *targets,
              svn_boolean_t steal, apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC6(pool);
  svn_stringbuf_t *space_separated_paths = FUNC9(pool);

  for (hi = FUNC0(pool, targets); hi; hi = FUNC1(hi))
    {
      const char *path = FUNC2(hi);
      FUNC5(iterpool);
      if (space_separated_paths->len)
        FUNC8(space_separated_paths, " ");
      FUNC8(space_separated_paths,
                               FUNC4(path, iterpool));
    }
  FUNC7(iterpool);

  return FUNC3(pool, "lock (%s)%s", space_separated_paths->data,
                      steal ? " steal" : "");
}
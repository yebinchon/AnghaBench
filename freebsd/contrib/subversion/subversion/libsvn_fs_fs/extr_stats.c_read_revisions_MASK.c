#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ min_unpacked_rev; scalar_t__ shard_size; scalar_t__ head; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ query_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(query_t *query,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC7(scratch_pool);
  svn_revnum_t revision;

  /* read all packed revs */
  for ( revision = 0
      ; revision < query->min_unpacked_rev
      ; revision += query->shard_size)
    {
      FUNC6(iterpool);

      if (FUNC5(query->fs))
        FUNC0(FUNC1(query, revision, result_pool, iterpool));
      else
        FUNC0(FUNC3(query, revision, result_pool, iterpool));
    }

  /* read non-packed revs */
  for ( ; revision <= query->head; ++revision)
    {
      FUNC6(iterpool);

      if (FUNC5(query->fs))
        FUNC0(FUNC2(query, revision, result_pool,
                                       iterpool));
      else
        FUNC0(FUNC4(query, revision, result_pool,
                                        iterpool));
    }

  FUNC8(iterpool);

  return SVN_NO_ERROR;
}
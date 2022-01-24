#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {char const* txn_id; } ;
typedef  TYPE_2__ representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char *target_rep_key,
                          const char *source_rep_key,
                          const char *txn_id,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  if (! (target_rep_key && source_rep_key
         && (FUNC1(target_rep_key, source_rep_key) != 0)))
    return SVN_NO_ERROR;

  if (txn_id)
    {
      representation_t *target_rep;
      FUNC0(FUNC3(&target_rep, trail->fs, target_rep_key,
                                   trail, pool));
      if (FUNC1(target_rep->txn_id, txn_id) != 0)
        return SVN_NO_ERROR;
    }

  return FUNC2(trail->fs, target_rep_key, source_rep_key,
                                  trail, pool);
}
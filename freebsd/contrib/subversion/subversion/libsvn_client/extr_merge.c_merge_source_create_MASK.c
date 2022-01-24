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
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  ancestral; void* loc2; void* loc1; } ;
typedef  TYPE_1__ merge_source_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static merge_source_t *
FUNC2(const svn_client__pathrev_t *loc1,
                    const svn_client__pathrev_t *loc2,
                    svn_boolean_t ancestral,
                    apr_pool_t *result_pool)
{
  merge_source_t *s
    = FUNC0(result_pool, sizeof(*s));

  s->loc1 = FUNC1(loc1, result_pool);
  s->loc2 = FUNC1(loc2, result_pool);
  s->ancestral = ancestral;
  return s;
}
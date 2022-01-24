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
struct TYPE_4__ {int state; int /*<<< orphan*/  state_pool; int /*<<< orphan*/ * attrs; struct TYPE_4__* prev; } ;
typedef  TYPE_1__ svn_ra_serf__xml_estate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(svn_ra_serf__xml_estate_t *xes,
                      int state,
                      const char *name,
                      const char *value)
{
  svn_ra_serf__xml_estate_t *scan;

  for (scan = xes; scan != NULL && scan->state != state; scan = scan->prev)
    /* pass */ ;

  FUNC0(scan != NULL);

  /* Make sure the target state has a pool.  */
  FUNC3(scan);

  /* ... and attribute storage.  */
  if (scan->attrs == NULL)
    scan->attrs = FUNC1(scan->state_pool);

  /* In all likelihood, NAME is a string constant. But we can't really
     be sure. And it isn't like we're storing a billion of these into
     the state pool.  */
  FUNC4(scan->attrs,
                FUNC2(scan->state_pool, name),
                FUNC2(scan->state_pool, value));
}
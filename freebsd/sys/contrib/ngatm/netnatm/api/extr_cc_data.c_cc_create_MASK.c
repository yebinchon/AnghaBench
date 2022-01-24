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
struct ccdata {scalar_t__ cookie; struct cc_funcs const* funcs; int /*<<< orphan*/  free_sigs; int /*<<< orphan*/  def_sigs; int /*<<< orphan*/  sigs; int /*<<< orphan*/  orphaned_conns; int /*<<< orphan*/  port_list; int /*<<< orphan*/  user_list; } ;
struct cc_funcs {int dummy; } ;

/* Variables and functions */
 struct ccdata* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct ccdata *
FUNC3(const struct cc_funcs *vtab)
{
	struct ccdata *cc;

	cc = FUNC0(sizeof(*cc));
	if (cc == NULL)
		return (NULL);

	FUNC1(&cc->user_list);
	FUNC2(&cc->port_list);
	FUNC1(&cc->orphaned_conns);
	FUNC2(&cc->sigs);
	FUNC2(&cc->def_sigs);
	FUNC2(&cc->free_sigs);
	cc->funcs = vtab;
	cc->cookie = 0;

	return (cc);
}
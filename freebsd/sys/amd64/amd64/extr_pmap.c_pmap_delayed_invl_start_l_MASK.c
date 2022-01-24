#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct pmap_invl_gen {scalar_t__ gen; } ;
struct TYPE_6__ {scalar_t__ gen; } ;
struct TYPE_4__ {struct pmap_invl_gen md_invl_gen; } ;
struct TYPE_5__ {TYPE_1__ td_md; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pmap_invl_gen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  invl_gen_mtx ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ pmap_invl_gen ; 
 int /*<<< orphan*/  pmap_invl_gen_tracker ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct pmap_invl_gen *invl_gen;
	u_long currgen;

	invl_gen = &curthread->td_md.md_invl_gen;
	FUNC3();
	FUNC4(&invl_gen_mtx);
	if (FUNC0(&pmap_invl_gen_tracker))
		currgen = pmap_invl_gen;
	else
		currgen = FUNC1(&pmap_invl_gen_tracker)->gen;
	invl_gen->gen = currgen + 1;
	FUNC2(&pmap_invl_gen_tracker, invl_gen, link);
	FUNC5(&invl_gen_mtx);
}
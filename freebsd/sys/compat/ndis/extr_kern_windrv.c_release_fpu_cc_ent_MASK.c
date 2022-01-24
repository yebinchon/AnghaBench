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
struct fpu_cc_ent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  fpu_busy_mtx ; 
 int /*<<< orphan*/  fpu_free_head ; 
 int /*<<< orphan*/  fpu_free_mtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct fpu_cc_ent *ent)
{
	FUNC2(&fpu_busy_mtx);
	FUNC1(ent, entries);
	FUNC3(&fpu_busy_mtx);
	FUNC2(&fpu_free_mtx);
	FUNC0(&fpu_free_head, ent, entries);
	FUNC3(&fpu_free_mtx);
}
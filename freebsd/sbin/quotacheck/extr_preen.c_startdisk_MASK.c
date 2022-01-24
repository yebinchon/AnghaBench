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
struct partentry {int /*<<< orphan*/  p_qfg; int /*<<< orphan*/  p_qfu; int /*<<< orphan*/  p_devname; } ;
struct diskentry {scalar_t__ d_pid; int /*<<< orphan*/  d_part; } ;

/* Variables and functions */
 struct partentry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct diskentry *d)
{
	struct partentry *p = FUNC0(&d->d_part);

	d->d_pid = FUNC3();
	if (d->d_pid < 0) {
		FUNC4("fork");
		return (8);
	}
	if (d->d_pid == 0)
		FUNC2(FUNC1(p->p_devname, p->p_qfu, p->p_qfg));
	return (0);
}
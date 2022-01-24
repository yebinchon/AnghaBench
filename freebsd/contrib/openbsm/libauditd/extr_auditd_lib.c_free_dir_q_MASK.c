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
struct dir_ent {struct dir_ent* dirname; } ;

/* Variables and functions */
 struct dir_ent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dir_ent* FUNC2 (struct dir_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dir_q ; 
 int /*<<< orphan*/  dirs ; 
 int /*<<< orphan*/  FUNC3 (struct dir_ent*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct dir_ent *d1, *d2;

	d1 = FUNC0(&dir_q);
	while (d1 != NULL) {
		d2 = FUNC2(d1, dirs);
		FUNC3(d1->dirname);
		FUNC3(d1);
		d1 = d2;
	}
	FUNC1(&dir_q);
}
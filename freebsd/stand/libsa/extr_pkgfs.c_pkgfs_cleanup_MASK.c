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
struct tarfile {scalar_t__ tf_cachesz; struct tarfile* pkg_chain; struct tarfile* tf_cache; struct tarfile* tf_next; struct tarfile* pkg_first; int /*<<< orphan*/  pkg_fd; int /*<<< orphan*/  pkg_zs; } ;
struct package {scalar_t__ tf_cachesz; struct package* pkg_chain; struct package* tf_cache; struct package* tf_next; struct package* pkg_first; int /*<<< orphan*/  pkg_fd; int /*<<< orphan*/  pkg_zs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tarfile*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tarfile* package ; 

void
FUNC3(void)
{
	struct package *chain;
	struct tarfile *tf, *tfn;

	while (package != NULL) {
		FUNC2(&package->pkg_zs);
		FUNC0(package->pkg_fd);

		tf = package->pkg_first;
		while (tf != NULL) {
			tfn = tf->tf_next;
			if (tf->tf_cachesz > 0)
				FUNC1(tf->tf_cache);
			FUNC1(tf);
			tf = tfn;
		}

		chain = package->pkg_chain;
		FUNC1(package);
		package = chain;
	}
}
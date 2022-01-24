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
struct section_fixture {int /*<<< orphan*/  section; } ;
struct pt_block_cache {int dummy; } ;

/* Variables and functions */
 int num_work ; 
 struct pt_block_cache* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int pte_internal ; 
 int pte_nomem ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct section_fixture *sfix;
	int it, errcode;

	sfix = arg;
	if (!sfix)
		return -pte_internal;

	errcode = FUNC1(sfix->section);
	if (errcode < 0)
		return errcode;

	for (it = 0; it < num_work; ++it) {
		struct pt_block_cache *bcache;

		errcode = FUNC2(sfix->section);
		if (errcode < 0)
			goto out_put;

		errcode = FUNC4(sfix->section);
		if (errcode < 0)
			goto out_unmap;

		bcache = FUNC0(sfix->section);
		if (!bcache) {
			errcode = -pte_nomem;
			goto out_unmap;
		}

		errcode = FUNC5(sfix->section);
		if (errcode < 0)
			goto out_put;
	}

	return FUNC3(sfix->section);

out_unmap:
	(void) FUNC5(sfix->section);

out_put:
	(void) FUNC3(sfix->section);
	return errcode;
}
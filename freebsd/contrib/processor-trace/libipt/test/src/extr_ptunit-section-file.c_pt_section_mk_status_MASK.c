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
typedef  scalar_t__ uint64_t ;
struct pt_file_status {long size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 struct pt_file_status* FUNC4 (int) ; 
 int pte_bad_image ; 
 int pte_internal ; 
 int pte_nomem ; 

int FUNC5(void **pstatus, uint64_t *psize, const char *filename)
{
	struct pt_file_status *status;
	FILE *file;
	long size;
	int errcode;

	if (!pstatus || !psize)
		return -pte_internal;

	file = FUNC1(filename, "rb");
	if (!file)
		return -pte_bad_image;

	errcode = FUNC2(file, 0, SEEK_END);
	if (errcode) {
		errcode = -pte_bad_image;
		goto out_file;
	}

	size = FUNC3(file);
	if (size < 0) {
		errcode = -pte_bad_image;
		goto out_file;
	}

	status = FUNC4(sizeof(*status));
	if (!status) {
		errcode = -pte_nomem;
		goto out_file;
	}

	status->size = size;

	*pstatus = status;
	*psize = (uint64_t) size;

	errcode = 0;

out_file:
	FUNC0(file);
	return errcode;
}
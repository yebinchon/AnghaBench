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
struct bsdtar {int /*<<< orphan*/ * ppbuff; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPBUFF_SIZE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

const char *
FUNC3(struct archive *a, void *_client_data)
{
	struct bsdtar *bsdtar = (struct bsdtar *)_client_data;
	(void)a; /* UNUSED */

	if (bsdtar->ppbuff == NULL) {
		bsdtar->ppbuff = FUNC2(PPBUFF_SIZE);
		if (bsdtar->ppbuff == NULL)
			FUNC0(1, errno, "Out of memory");
	}
	return FUNC1("Enter passphrase:",
		bsdtar->ppbuff, PPBUFF_SIZE);
}
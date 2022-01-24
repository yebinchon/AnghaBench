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
struct ssh_krl {int /*<<< orphan*/ * comment; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int
FUNC2(struct ssh_krl *krl, const char *comment)
{
	FUNC0(krl->comment);
	if ((krl->comment = FUNC1(comment)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	return 0;
}
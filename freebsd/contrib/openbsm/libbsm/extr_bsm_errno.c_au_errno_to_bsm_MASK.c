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
typedef  int /*<<< orphan*/  u_char ;
struct bsm_errno {int /*<<< orphan*/  be_bsm_errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSM_ERRNO_UNKNOWN ; 
 struct bsm_errno* FUNC0 (int) ; 

u_char
FUNC1(int local_errno)
{
	const struct bsm_errno *bsme;

	bsme = FUNC0(local_errno);
	if (bsme == NULL)
		return (BSM_ERRNO_UNKNOWN);
	return (bsme->be_bsm_errno);
}
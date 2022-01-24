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
struct bsm_errno {scalar_t__ be_local_errno; char const* be_strerror; } ;

/* Variables and functions */
 scalar_t__ ERRNO_NO_LOCAL_MAPPING ; 
 struct bsm_errno* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (scalar_t__) ; 

const char *
FUNC2(u_char bsm_errno)
{
	const struct bsm_errno *bsme;

	bsme = FUNC0(bsm_errno);
	if (bsme == NULL)
		return ("Unrecognized BSM error");
	if (bsme->be_local_errno != ERRNO_NO_LOCAL_MAPPING)
		return (FUNC1(bsme->be_local_errno));
	return (bsme->be_strerror);
}
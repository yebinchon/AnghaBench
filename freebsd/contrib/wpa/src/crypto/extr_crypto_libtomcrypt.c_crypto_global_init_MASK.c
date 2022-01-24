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

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  aes_desc ; 
 int /*<<< orphan*/  des3_desc ; 
 int /*<<< orphan*/  des_desc ; 
 int /*<<< orphan*/  ltc_mp ; 
 int /*<<< orphan*/  md4_desc ; 
 int /*<<< orphan*/  md5_desc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sha1_desc ; 
 int /*<<< orphan*/  tfm_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(void)
{
	ltc_mp = tfm_desc;
	/* TODO: only register algorithms that are really needed */
	if (FUNC1(&md4_desc) < 0 ||
	    FUNC1(&md5_desc) < 0 ||
	    FUNC1(&sha1_desc) < 0 ||
	    FUNC0(&aes_desc) < 0 ||
	    FUNC0(&des_desc) < 0 ||
	    FUNC0(&des3_desc) < 0) {
		FUNC2(MSG_ERROR, "TLSv1: Failed to register "
			   "hash/cipher functions");
		return -1;
	}

	return 0;
}
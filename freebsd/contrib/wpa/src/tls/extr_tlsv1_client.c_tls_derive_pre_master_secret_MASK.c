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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ TLS_PRE_MASTER_SECRET_LEN ; 
 int /*<<< orphan*/  TLS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC2(u8 *pre_master_secret)
{
	FUNC0(pre_master_secret, TLS_VERSION);
	if (FUNC1(pre_master_secret + 2,
			  TLS_PRE_MASTER_SECRET_LEN - 2))
		return -1;
	return 0;
}
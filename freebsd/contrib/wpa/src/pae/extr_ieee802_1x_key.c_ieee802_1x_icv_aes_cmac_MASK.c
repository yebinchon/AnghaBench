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
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(const u8 *ick, size_t ick_bytes, const u8 *msg,
			    size_t msg_bytes, u8 *icv)
{
	int res;

	if (ick_bytes == 16)
		res = FUNC0(ick, msg, msg_bytes, icv);
	else if (ick_bytes == 32)
		res = FUNC1(ick, msg, msg_bytes, icv);
	else
		return -1;
	if (res) {
		FUNC2(MSG_ERROR,
			   "MKA: AES-CMAC failed for ICV calculation");
		return -1;
	}
	return 0;
}
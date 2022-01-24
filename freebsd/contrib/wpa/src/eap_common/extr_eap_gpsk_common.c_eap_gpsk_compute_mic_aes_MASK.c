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
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static int FUNC2(const u8 *sk, size_t sk_len,
				    const u8 *data, size_t len, u8 *mic)
{
	if (sk_len != 16) {
		FUNC1(MSG_DEBUG, "EAP-GPSK: Invalid SK length %lu for "
			   "AES-CMAC MIC", (unsigned long) sk_len);
		return -1;
	}

	return FUNC0(sk, data, len, mic);
}
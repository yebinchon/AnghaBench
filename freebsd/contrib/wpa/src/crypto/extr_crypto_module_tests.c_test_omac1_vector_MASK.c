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
typedef  int u8 ;
struct omac1_test_vector {int* k; int* msg; int msg_len; int* tag; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (int*,int*,int,int*) ; 
 scalar_t__ FUNC1 (int*,int,int const**,size_t*,int*) ; 
 scalar_t__ FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(const struct omac1_test_vector *tv,
			     unsigned int i)
{
	u8 key[] = {
		0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
		0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c
	};
	u8 msg[] = { 0x12, 0x34, 0x56 };
	u8 result[24], result2[24];
	const u8 *addr[3];
	size_t len[3];

	if (FUNC0(tv->k, tv->msg, tv->msg_len, result) ||
	    FUNC2(result, tv->tag, 16) != 0) {
		FUNC3(MSG_ERROR, "OMAC1-AES-128 test vector %u failed", i);
		return 1;
	}

	if (tv->msg_len > 1) {

		addr[0] = tv->msg;
		len[0] = 1;
		addr[1] = tv->msg + 1;
		len[1] = tv->msg_len - 1;

		if (FUNC1(tv->k, 2, addr, len, result) ||
		    FUNC2(result, tv->tag, 16) != 0) {
			FUNC3(MSG_ERROR,
				   "OMAC1-AES-128(vector) test vector %u failed",
				   i);
			return 1;
		}

		addr[0] = tv->msg;
		len[0] = tv->msg_len - 2;
		addr[1] = tv->msg + tv->msg_len - 2;
		len[1] = 1;
		addr[2] = tv->msg + tv->msg_len - 1;
		len[2] = 1;

		if (FUNC1(tv->k, 3, addr, len, result) ||
		    FUNC2(result, tv->tag, 16) != 0) {
			FUNC3(MSG_ERROR,
				   "OMAC1-AES-128(vector2) test vector %u failed",
				   i);
			return 1;
		}
	}

	addr[0] = &msg[0];
	len[0] = 1;
	addr[1] = &msg[1];
	len[1] = 1;
	addr[2] = &msg[2];
	len[2] = 1;
	if (FUNC0(key, msg, sizeof(msg), result) ||
	    FUNC1(key, 3, addr, len, result2) ||
	    FUNC2(result, result2, 16) != 0) {
		FUNC3(MSG_ERROR, "OMAC1-AES-128 short test mismatch");
		return 1;
	}

	return 0;
}
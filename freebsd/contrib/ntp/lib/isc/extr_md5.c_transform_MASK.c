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
typedef  scalar_t__ isc_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  F1 ; 
 int /*<<< orphan*/  F2 ; 
 int /*<<< orphan*/  F3 ; 
 int /*<<< orphan*/  F4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__ const,int) ; 

__attribute__((used)) static void
FUNC1(isc_uint32_t buf[4], isc_uint32_t const in[16]) {
	register isc_uint32_t a, b, c, d;

	a = buf[0];
	b = buf[1];
	c = buf[2];
	d = buf[3];

	FUNC0(F1, a, b, c, d, in[0] + 0xd76aa478, 7);
	FUNC0(F1, d, a, b, c, in[1] + 0xe8c7b756, 12);
	FUNC0(F1, c, d, a, b, in[2] + 0x242070db, 17);
	FUNC0(F1, b, c, d, a, in[3] + 0xc1bdceee, 22);
	FUNC0(F1, a, b, c, d, in[4] + 0xf57c0faf, 7);
	FUNC0(F1, d, a, b, c, in[5] + 0x4787c62a, 12);
	FUNC0(F1, c, d, a, b, in[6] + 0xa8304613, 17);
	FUNC0(F1, b, c, d, a, in[7] + 0xfd469501, 22);
	FUNC0(F1, a, b, c, d, in[8] + 0x698098d8, 7);
	FUNC0(F1, d, a, b, c, in[9] + 0x8b44f7af, 12);
	FUNC0(F1, c, d, a, b, in[10] + 0xffff5bb1, 17);
	FUNC0(F1, b, c, d, a, in[11] + 0x895cd7be, 22);
	FUNC0(F1, a, b, c, d, in[12] + 0x6b901122, 7);
	FUNC0(F1, d, a, b, c, in[13] + 0xfd987193, 12);
	FUNC0(F1, c, d, a, b, in[14] + 0xa679438e, 17);
	FUNC0(F1, b, c, d, a, in[15] + 0x49b40821, 22);

	FUNC0(F2, a, b, c, d, in[1] + 0xf61e2562, 5);
	FUNC0(F2, d, a, b, c, in[6] + 0xc040b340, 9);
	FUNC0(F2, c, d, a, b, in[11] + 0x265e5a51, 14);
	FUNC0(F2, b, c, d, a, in[0] + 0xe9b6c7aa, 20);
	FUNC0(F2, a, b, c, d, in[5] + 0xd62f105d, 5);
	FUNC0(F2, d, a, b, c, in[10] + 0x02441453, 9);
	FUNC0(F2, c, d, a, b, in[15] + 0xd8a1e681, 14);
	FUNC0(F2, b, c, d, a, in[4] + 0xe7d3fbc8, 20);
	FUNC0(F2, a, b, c, d, in[9] + 0x21e1cde6, 5);
	FUNC0(F2, d, a, b, c, in[14] + 0xc33707d6, 9);
	FUNC0(F2, c, d, a, b, in[3] + 0xf4d50d87, 14);
	FUNC0(F2, b, c, d, a, in[8] + 0x455a14ed, 20);
	FUNC0(F2, a, b, c, d, in[13] + 0xa9e3e905, 5);
	FUNC0(F2, d, a, b, c, in[2] + 0xfcefa3f8, 9);
	FUNC0(F2, c, d, a, b, in[7] + 0x676f02d9, 14);
	FUNC0(F2, b, c, d, a, in[12] + 0x8d2a4c8a, 20);

	FUNC0(F3, a, b, c, d, in[5] + 0xfffa3942, 4);
	FUNC0(F3, d, a, b, c, in[8] + 0x8771f681, 11);
	FUNC0(F3, c, d, a, b, in[11] + 0x6d9d6122, 16);
	FUNC0(F3, b, c, d, a, in[14] + 0xfde5380c, 23);
	FUNC0(F3, a, b, c, d, in[1] + 0xa4beea44, 4);
	FUNC0(F3, d, a, b, c, in[4] + 0x4bdecfa9, 11);
	FUNC0(F3, c, d, a, b, in[7] + 0xf6bb4b60, 16);
	FUNC0(F3, b, c, d, a, in[10] + 0xbebfbc70, 23);
	FUNC0(F3, a, b, c, d, in[13] + 0x289b7ec6, 4);
	FUNC0(F3, d, a, b, c, in[0] + 0xeaa127fa, 11);
	FUNC0(F3, c, d, a, b, in[3] + 0xd4ef3085, 16);
	FUNC0(F3, b, c, d, a, in[6] + 0x04881d05, 23);
	FUNC0(F3, a, b, c, d, in[9] + 0xd9d4d039, 4);
	FUNC0(F3, d, a, b, c, in[12] + 0xe6db99e5, 11);
	FUNC0(F3, c, d, a, b, in[15] + 0x1fa27cf8, 16);
	FUNC0(F3, b, c, d, a, in[2] + 0xc4ac5665, 23);

	FUNC0(F4, a, b, c, d, in[0] + 0xf4292244, 6);
	FUNC0(F4, d, a, b, c, in[7] + 0x432aff97, 10);
	FUNC0(F4, c, d, a, b, in[14] + 0xab9423a7, 15);
	FUNC0(F4, b, c, d, a, in[5] + 0xfc93a039, 21);
	FUNC0(F4, a, b, c, d, in[12] + 0x655b59c3, 6);
	FUNC0(F4, d, a, b, c, in[3] + 0x8f0ccc92, 10);
	FUNC0(F4, c, d, a, b, in[10] + 0xffeff47d, 15);
	FUNC0(F4, b, c, d, a, in[1] + 0x85845dd1, 21);
	FUNC0(F4, a, b, c, d, in[8] + 0x6fa87e4f, 6);
	FUNC0(F4, d, a, b, c, in[15] + 0xfe2ce6e0, 10);
	FUNC0(F4, c, d, a, b, in[6] + 0xa3014314, 15);
	FUNC0(F4, b, c, d, a, in[13] + 0x4e0811a1, 21);
	FUNC0(F4, a, b, c, d, in[4] + 0xf7537e82, 6);
	FUNC0(F4, d, a, b, c, in[11] + 0xbd3af235, 10);
	FUNC0(F4, c, d, a, b, in[2] + 0x2ad7d2bb, 15);
	FUNC0(F4, b, c, d, a, in[9] + 0xeb86d391, 21);

	buf[0] += a;
	buf[1] += b;
	buf[2] += c;
	buf[3] += d;
}
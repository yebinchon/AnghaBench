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

/* Variables and functions */
 int const FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 

__attribute__((used)) static void FUNC5(const u8 *x, const u8 *y, u8 *z)
{
	u8 v[16];
	int i, j;

	FUNC2(z, 0, 16); /* Z_0 = 0^128 */
	FUNC1(v, y, 16); /* V_0 = Y */

	for (i = 0; i < 16; i++) {
		for (j = 0; j < 8; j++) {
			if (x[i] & FUNC0(7 - j)) {
				/* Z_(i + 1) = Z_i XOR V_i */
				FUNC4(z, v);
			} else {
				/* Z_(i + 1) = Z_i */
			}

			if (v[15] & 0x01) {
				/* V_(i + 1) = (V_i >> 1) XOR R */
				FUNC3(v);
				/* R = 11100001 || 0^120 */
				v[0] ^= 0xe1;
			} else {
				/* V_(i + 1) = V_i >> 1 */
				FUNC3(v);
			}
		}
	}
}
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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 

int FUNC10(u32 rk[], const u8 cipherKey[], int keyBits)
{
	int i;
	u32 temp;

	rk[0] = FUNC0(cipherKey     );
	rk[1] = FUNC0(cipherKey +  4);
	rk[2] = FUNC0(cipherKey +  8);
	rk[3] = FUNC0(cipherKey + 12);

	if (keyBits == 128) {
		for (i = 0; i < 10; i++) {
			temp  = rk[3];
			rk[4] = rk[0] ^ FUNC4(temp) ^ FUNC6(temp) ^
				FUNC8(temp) ^ FUNC3(temp) ^ FUNC1(i);
			rk[5] = rk[1] ^ rk[4];
			rk[6] = rk[2] ^ rk[5];
			rk[7] = rk[3] ^ rk[6];
			rk += 4;
		}
		return 10;
	}

	rk[4] = FUNC0(cipherKey + 16);
	rk[5] = FUNC0(cipherKey + 20);

	if (keyBits == 192) {
		for (i = 0; i < 8; i++) {
			temp  = rk[5];
			rk[6] = rk[0] ^ FUNC4(temp) ^ FUNC6(temp) ^
				FUNC8(temp) ^ FUNC3(temp) ^ FUNC1(i);
			rk[7] = rk[1] ^ rk[6];
			rk[8] = rk[2] ^ rk[7];
			rk[9] = rk[3] ^ rk[8];
			if (i == 7)
				return 12;
			rk[10] = rk[4] ^ rk[9];
			rk[11] = rk[5] ^ rk[10];
			rk += 6;
		}
	}

	rk[6] = FUNC0(cipherKey + 24);
	rk[7] = FUNC0(cipherKey + 28);

	if (keyBits == 256) {
		for (i = 0; i < 7; i++) {
			temp  = rk[7];
			rk[8] = rk[0] ^ FUNC4(temp) ^ FUNC6(temp) ^
				FUNC8(temp) ^ FUNC3(temp) ^ FUNC1(i);
			rk[9] = rk[1] ^ rk[8];
			rk[10] = rk[2] ^ rk[9];
			rk[11] = rk[3] ^ rk[10];
			if (i == 6)
				return 14;
			temp  = rk[11];
			rk[12] = rk[4] ^ FUNC2(temp) ^ FUNC5(temp) ^
				FUNC7(temp) ^ FUNC9(temp);
			rk[13] = rk[5] ^ rk[12];
			rk[14] = rk[6] ^ rk[13];
			rk[15] = rk[7] ^ rk[14];
			rk += 8;
		}
	}

	return -1;
}
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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_DECRYPT ; 
 int LL ; 
 int /*<<< orphan*/  MODE_CBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6(int argc, char **argv)
{
	keyInstance ki;
	cipherInstance ci;
	uint8_t key[16];
	uint8_t in[LL];
	uint8_t out[LL];
	int i, j;

	FUNC4(&ci, MODE_CBC, NULL);
	for (i = 0; i < 16; i++)
		key[i] = i;
	FUNC5(&ki, DIR_DECRYPT, 128, key);
	for (i = 0; i < LL; i++)
		in[i] = i;
	FUNC3(&ci, &ki, in, LL * 8, out);
	for (i = 0; i < LL; i++)
		FUNC1("%02x", out[i]);
	FUNC2('\n');
	FUNC3(&ci, &ki, in, LL * 8, in);
	j = 0;
	for (i = 0; i < LL; i++) {
		FUNC1("%02x", in[i]);
		if (in[i] != out[i])
			j++;
	}
	FUNC2('\n');
	if (j != 0) {
		FUNC0(stderr,
		    "Error: inplace decryption fails in %d places\n", j);
		return (1);
	} else {
		return (0);
	}
}
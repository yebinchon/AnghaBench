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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC11(uint32_t state[8], const uint32_t data[16])
{
	uint32_t W[16];
	uint32_t T[8];

	// Copy state[] to working vars.
	FUNC10(T, state, sizeof(T));

	// The first 16 operations unrolled
	FUNC0( 0); FUNC0( 1); FUNC0( 2); FUNC0( 3);
	FUNC0( 4); FUNC0( 5); FUNC0( 6); FUNC0( 7);
	FUNC0( 8); FUNC0( 9); FUNC0(10); FUNC0(11);
	FUNC0(12); FUNC0(13); FUNC0(14); FUNC0(15);

	// The remaining 48 operations partially unrolled
	for (unsigned int j = 16; j < 64; j += 16) {
		FUNC1( 0); FUNC1( 1); FUNC1( 2); FUNC1( 3);
		FUNC1( 4); FUNC1( 5); FUNC1( 6); FUNC1( 7);
		FUNC1( 8); FUNC1( 9); FUNC1(10); FUNC1(11);
		FUNC1(12); FUNC1(13); FUNC1(14); FUNC1(15);
	}

	// Add the working vars back into state[].
	state[0] += FUNC2(0);
	state[1] += FUNC3(0);
	state[2] += FUNC4(0);
	state[3] += FUNC5(0);
	state[4] += FUNC6(0);
	state[5] += FUNC7(0);
	state[6] += FUNC8(0);
	state[7] += FUNC9(0);
}
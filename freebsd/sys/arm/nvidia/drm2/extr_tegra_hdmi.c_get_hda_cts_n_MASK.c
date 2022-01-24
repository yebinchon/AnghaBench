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
typedef  int uint32_t ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(uint32_t audio_freq_hz, uint32_t pixclk_freq_hz,
    uint32_t *best_cts, uint32_t *best_n, uint32_t *best_a)
{
	int min_n;
	int max_n;
	int ideal_n;
	int n;
	int cts;
	int aval;
	int64_t err_f;
	int64_t min_err_f;
	int64_t cts_f;
	int64_t aval_f;
	int64_t half_f;		/* constant 0.5 */
	bool better_n;

	/*
	 * All floats are in fixed I48.16 format.
	 *
	 * Ideal ACR interval is 1000 hz (1 ms);
	 * acceptable is 300 hz .. 1500 hz
	 */
	min_n = 128 * audio_freq_hz / 1500;
	max_n = 128 * audio_freq_hz / 300;
	ideal_n = 128 * audio_freq_hz / 1000;
	min_err_f = FUNC0(100);
	half_f = FUNC0(1) / 2;

	*best_n = 0;
	*best_cts = 0;
	*best_a = 0;

	for (n = min_n; n <= max_n; n++) {
		cts_f = FUNC0(pixclk_freq_hz);
		cts_f *= n;
		cts_f /= 128 * audio_freq_hz;
		cts = FUNC1(cts_f + half_f);		/* round */
		err_f = cts_f - FUNC0(cts);
		if (err_f < 0)
			err_f = -err_f;
		aval_f = FUNC0(24000000);
		aval_f *= n;
		aval_f /= 128 * audio_freq_hz;
		aval = FUNC1(aval_f);			/* truncate */

		better_n = FUNC2(n - ideal_n) < FUNC2((int)(*best_n) - ideal_n);
		if (FUNC0(aval) == aval_f &&
		    (err_f < min_err_f || (err_f == min_err_f && better_n))) {

			min_err_f = err_f;
			*best_n = (uint32_t)n;
			*best_cts = (uint32_t)cts;
			*best_a = (uint32_t)aval;

			if (err_f == 0 && n == ideal_n)
				break;
		}
	}
	return (0);
}
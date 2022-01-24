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
typedef  int /*<<< orphan*/  freqs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned int freqs[], unsigned int num,
			  unsigned int freq)
{
	unsigned int i;

	for (i = 0; i < num; i++) {
		if (freqs[i] == freq)
			break;
	}
	if (i == 0 || i >= num)
		return;
	FUNC0(&freqs[1], &freqs[0], i * sizeof(freqs[0]));
	freqs[0] = freq;
}
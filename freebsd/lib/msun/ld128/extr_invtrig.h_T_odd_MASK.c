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

/* Variables and functions */
 long double* aT ; 

__attribute__((used)) static inline long double
FUNC0(long double x)
{

	return (aT[1] + x * (aT[3] + x * (aT[5] + x * (aT[7] + x * \
		(aT[9] + x * (aT[11] + x * (aT[13] + x * (aT[15] + x * \
		(aT[17] + x * (aT[19] + x * (aT[21] + x * aT[23])))))))))));
}
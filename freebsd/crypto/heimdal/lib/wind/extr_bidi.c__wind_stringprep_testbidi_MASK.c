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
typedef  int wind_profile_flags ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int WIND_PROFILE_NAME ; 
 int WIND_PROFILE_SASL ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const) ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const) ; 

int
FUNC2(const uint32_t *in, size_t in_len, wind_profile_flags flags)
{
    size_t i;
    unsigned ral = 0;
    unsigned l   = 0;

    if ((flags & (WIND_PROFILE_NAME|WIND_PROFILE_SASL)) == 0)
	return 0;

    for (i = 0; i < in_len; ++i) {
	ral |= FUNC1(in[i]);
	l   |= FUNC0(in[i]);
    }
    if (ral) {
	if (l)
	    return 1;
	if (!FUNC1(in[0]) || !FUNC1(in[in_len - 1]))
	    return 1;
    }
    return 0;
}
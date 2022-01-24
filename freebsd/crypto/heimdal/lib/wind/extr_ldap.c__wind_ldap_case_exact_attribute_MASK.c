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

/* Variables and functions */
 int WIND_ERR_OVERRUN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,size_t*,int const,size_t) ; 

int
FUNC2(const uint32_t *tmp,
				size_t olen,
				uint32_t *out,
				size_t *out_len)
{
    size_t o = 0, i = 0;

    if (olen == 0) {
	*out_len = 0;
	return 0;
    }

    if (FUNC1(out, &o, 0x20, *out_len))
	return WIND_ERR_OVERRUN;
    while(i < olen && tmp[i] == 0x20) /* skip initial spaces */
	i++;

    while (i < olen) {
	if (tmp[i] == 0x20) {
	    if (FUNC1(out, &o, 0x20, *out_len) ||
		FUNC1(out, &o, 0x20, *out_len))
		return WIND_ERR_OVERRUN;
	    while(i < olen && tmp[i] == 0x20) /* skip middle spaces */
		i++;
	} else {
	    if (FUNC1(out, &o, tmp[i++], *out_len))
		return WIND_ERR_OVERRUN;
	}
    }
    FUNC0(o > 0);

    /* only one spaces at the end */
    if (o == 1 && out[0] == 0x20)
	o = 0;
    else if (out[o - 1] == 0x20) {
	if (out[o - 2] == 0x20)
	    o--;
    } else
	FUNC1(out, &o, 0x20, *out_len);

    *out_len = o;

    return 0;
}
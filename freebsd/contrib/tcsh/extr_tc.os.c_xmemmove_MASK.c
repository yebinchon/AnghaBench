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

void *
FUNC0(void *vdst, const void *vsrc, size_t len)
{
    const char *src = vsrc;
    char *dst = vdst;

    if (src == dst)
	return vdst;

    if (src > dst) {
	while (len--) 
	    *dst++ = *src++;
    }
    else {
	src += len;
	dst += len;
	while (len--) 
	    *--dst = *--src;
    }
    return vdst;
}
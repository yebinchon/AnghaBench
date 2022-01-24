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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,double) ; 

__attribute__((used)) static void
FUNC1(char *buf, size_t size, uint8_t *xbuf)
{
	double d;

	d = (double)xbuf[0];
	d += (double)xbuf[1] / 256;

	FUNC0(buf, size, "%.2f C", d);
}
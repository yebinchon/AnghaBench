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
typedef  int u_long ;

/* Variables and functions */
 char* digits ; 

__attribute__((used)) static char *
FUNC0(char *buf, u_long ul, int base)
{
	char *p;

	p = buf;
	*p = '\0';
	do
		*--p = digits[ul % base];
	while ((ul /= base) != 0);
	return (p);
}
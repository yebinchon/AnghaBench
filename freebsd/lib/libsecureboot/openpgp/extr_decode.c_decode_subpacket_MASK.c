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
 int FUNC0 (unsigned char**,int) ; 

unsigned char *
FUNC1(unsigned char **pptr, int *stag, int *sz)
{
	unsigned char *ptr;
	int len;

	ptr = *pptr;
	len = FUNC0(&ptr, -1);
	*sz = (int)(len + ptr - *pptr);
	*pptr = ptr + len;
	*stag = *ptr++;
	return (ptr);
}
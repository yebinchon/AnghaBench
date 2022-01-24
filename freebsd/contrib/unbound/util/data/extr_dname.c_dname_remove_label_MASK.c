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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void 
FUNC2(uint8_t** dname, size_t* len)
{
	size_t lablen;
	FUNC1(dname && *dname && len);
	lablen = (*dname)[0];
	FUNC1(!FUNC0(lablen));
	FUNC1(*len > lablen);
	if(lablen == 0)
		return; /* do not modify root label */
	*len -= lablen+1;
	*dname += lablen+1;
}
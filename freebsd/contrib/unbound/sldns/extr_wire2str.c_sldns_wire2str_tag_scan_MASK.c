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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*,char) ; 

int FUNC2(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	size_t i, n;
	int w = 0;
	if(*dl < 1)
		return -1;
	n = (size_t)((*d)[0]);
	if(*dl < 1+n)
		return -1;
	for(i=0; i<n; i++)
		if(!FUNC0((unsigned char)(*d)[i+1]))
			return -1;
	for(i=0; i<n; i++)
		w += FUNC1(s, sl, "%c", (char)(*d)[i+1]);
	(*d)+=n+1;
	(*dl)-=(n+1);
	return w;
}
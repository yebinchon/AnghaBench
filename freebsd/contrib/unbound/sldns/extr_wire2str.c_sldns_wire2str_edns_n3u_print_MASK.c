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
typedef  int uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,char*,...) ; 

int FUNC1(char** s, size_t* sl, uint8_t* data,
	size_t len)
{
	size_t i;
	int w = 0;
	for(i=0; i<len; i++) {
		if(data[i] == 1)
			w += FUNC0(s, sl, " SHA1");
		else 	w += FUNC0(s, sl, " %d", (int)data[i]);
	}
	return w;
}
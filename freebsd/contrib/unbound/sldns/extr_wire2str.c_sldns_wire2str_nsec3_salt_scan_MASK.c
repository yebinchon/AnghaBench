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
 int FUNC0 (char**,size_t*,scalar_t__*,size_t) ; 
 int FUNC1 (char**,size_t*,char*) ; 

int FUNC2(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	size_t salt_len;
	int w;
	if(*dl < 1) return -1;
	salt_len = (size_t)(*d)[0];
	if(*dl < 1+salt_len) return -1;
	(*d)++;
	(*dl)--;
	if(salt_len == 0) {
		return FUNC1(s, sl, "-");
	}
	w = FUNC0(s, sl, *d, salt_len);
	(*dl)-=salt_len;
	(*d)+=salt_len;
	return w;
}
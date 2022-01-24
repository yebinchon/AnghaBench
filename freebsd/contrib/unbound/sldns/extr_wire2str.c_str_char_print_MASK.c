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
typedef  char uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int FUNC1 (char**,size_t*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC2(char** s, size_t* sl, uint8_t c)
{
	if(FUNC0((unsigned char)c) || c == '\t') {
		if(c == '\"' || c == '\\')
			return FUNC1(s, sl, "\\%c", c);
		if(*sl) {
			**s = (char)c;
			(*s)++;
			(*sl)--;
		}
		return 1;
	}
	return FUNC1(s, sl, "\\%03u", (unsigned)c);
}
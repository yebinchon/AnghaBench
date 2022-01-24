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
 scalar_t__ FUNC1 (unsigned char) ; 
 int FUNC2 (char**,size_t*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(char** s, size_t* slen, uint8_t c)
{
	if(c == '.' || c == ';' || c == '(' || c == ')' || c == '\\')
		return FUNC2(s, slen, "\\%c", c);
	else if(!(FUNC0((unsigned char)c) && FUNC1((unsigned char)c)))
		return FUNC2(s, slen, "\\%03u", (unsigned)c);
	/* plain printout */
	if(*slen) {
		**s = (char)c;
		(*s)++;
		(*slen)--;
	}
	return 1;
}
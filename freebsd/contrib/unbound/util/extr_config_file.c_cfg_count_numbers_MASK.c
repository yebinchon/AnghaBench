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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

int 
FUNC2(const char* s)
{
	/* format ::= (sp num)+ sp  */
	/* num ::= [-](0-9)+        */
	/* sp ::= (space|tab)*      */
	int num = 0;
	while(*s) {
		while(*s && FUNC1((unsigned char)*s))
			s++;
		if(!*s) /* end of string */
			break;
		if(*s == '-')
			s++;
		if(!*s) /* only - not allowed */
			return 0;
		if(!FUNC0((unsigned char)*s)) /* bad character */
			return 0;
		while(*s && FUNC0((unsigned char)*s))
			s++;
		num++;
	}
	return num;
}
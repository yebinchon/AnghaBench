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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,size_t) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char FUNC5 (unsigned char) ; 

int 
FUNC6(const char* str, size_t* res)
{
	size_t len;
	size_t mult = 1;
	if(!str || (len=(size_t)FUNC4(str)) == 0) {
		FUNC3("not a size: '%s'", str);
		return 0;
	}
	if(FUNC1(str, len)) {
		*res = (size_t)FUNC0(str);
		return 1;
	}
	/* check appended num */
	while(len>0 && str[len-1]==' ')
		len--;
	if(len > 1 && str[len-1] == 'b') 
		len--;
	else if(len > 1 && str[len-1] == 'B') 
		len--;
	
	if(len > 1 && FUNC5((unsigned char)str[len-1]) == 'g')
		mult = 1024*1024*1024;
	else if(len > 1 && FUNC5((unsigned char)str[len-1]) == 'm')
		mult = 1024*1024;
	else if(len > 1 && FUNC5((unsigned char)str[len-1]) == 'k')
		mult = 1024;
	else if(len > 0 && FUNC2((unsigned char)str[len-1]))
		mult = 1;
	else {
		FUNC3("unknown size specifier: '%s'", str);
		return 0;
	}
	while(len>1 && str[len-2]==' ')
		len--;

	if(!FUNC1(str, len-1)) {
		FUNC3("unknown size specifier: '%s'", str);
		return 0;
	}
	*res = ((size_t)FUNC0(str)) * mult;
	return 1;
}
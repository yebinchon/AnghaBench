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
struct in_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*,struct in_addr*) ; 
 scalar_t__ FUNC2 (char const) ; 

int
FUNC3(const char * buf)
{
	struct in_addr jnk;
	int count = 0;

	while (FUNC1(buf, &jnk) == 1){
		count++;
		while (FUNC2(*buf) || FUNC0(*buf))
			buf++;
		if (*buf == '\0')
			return (count);
		while (*buf ==  ' ')
			buf++;
	}
	return (0);
}
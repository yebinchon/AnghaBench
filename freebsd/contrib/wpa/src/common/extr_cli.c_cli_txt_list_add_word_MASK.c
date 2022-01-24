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
struct dl_list {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dl_list*,char*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 
 int FUNC4 (char const*) ; 

int FUNC5(struct dl_list *txt_list, const char *txt,
			  int separator)
{
	const char *end;
	char *buf;
	int ret;

	end = FUNC3(txt, separator);
	if (end == NULL)
		end = txt + FUNC4(txt);
	buf = FUNC1(txt, end - txt);
	if (buf == NULL)
		return -1;
	ret = FUNC0(txt_list, buf);
	FUNC2(buf);
	return ret;
}
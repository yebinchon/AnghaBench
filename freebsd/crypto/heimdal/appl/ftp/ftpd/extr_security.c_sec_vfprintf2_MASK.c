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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ data_prot ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  out_buffer ; 
 scalar_t__ prot_clear ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

int
FUNC4(FILE *f, const char *fmt, va_list ap)
{
    char *buf;
    int ret;
    if(data_prot == prot_clear)
	return FUNC3(f, fmt, ap);
    else {
	int len;
	len = FUNC2(&buf, fmt, ap);
	if (len == -1)
	    return len;
	ret = FUNC0(&out_buffer, buf, len);
	FUNC1(buf);
	return ret;
    }
}
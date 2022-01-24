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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sbuf*,char*) ; 
 int FUNC1 (struct sbuf*,char) ; 

int
FUNC2(struct sbuf *sb, char *str, int size)
{
	char *end = str + size;
	int retval;

	retval = 0;

	for (; *str && str < end; str++) {
		switch (*str) {
		case '&':
			retval = FUNC0(sb, "&amp;");
			break;
		case '>':
			retval = FUNC0(sb, "&gt;");
			break;
		case '<':
			retval = FUNC0(sb, "&lt;");
			break;
		default:
			retval = FUNC1(sb, *str);
			break;
		}

		if (retval != 0)
			break;

	}

	return (retval);
}
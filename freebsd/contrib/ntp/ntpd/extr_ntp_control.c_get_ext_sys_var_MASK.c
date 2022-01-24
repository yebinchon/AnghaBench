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
struct ctl_var {int flags; char* text; } ;

/* Variables and functions */
 int EOV ; 
 struct ctl_var* ext_sys_var ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 size_t FUNC1 (char const*) ; 

const char *
FUNC2(const char *tag)
{
	struct ctl_var *	v;
	size_t			c;
	const char *		val;

	val = NULL;
	c = FUNC1(tag);
	for (v = ext_sys_var; !(EOV & v->flags); v++) {
		if (NULL != v->text && !FUNC0(tag, v->text, c)) {
			if ('=' == v->text[c]) {
				val = v->text + c + 1;
				break;
			} else if ('\0' == v->text[c]) {
				val = "";
				break;
			}
		}
	}

	return val;
}
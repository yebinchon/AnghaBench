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
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (char**,char*) ; 

void
FUNC2(char *string, const char *opt)
{
	char *o, *p, *r;

	if (string == NULL || *string == '\0' || opt == NULL || *opt == '\0')
		return;

	r = string;

	for (p = string; (o = FUNC1(&p, ",")) != NULL;) {
		if (FUNC0(opt, o) != 0) {
			if (*r == ',' && *o != '\0')
				r++;
			while ((*r++ = *o++) != '\0')
			    ;
			*--r = ',';
		}
	}
	*r = '\0';
}
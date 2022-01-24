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
typedef  int efi_char ;

/* Variables and functions */
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (int const*) ; 

int
FUNC3(const efi_char *nm, char **name)
{
	size_t len, sz;
	efi_char c;
	char *cp;
	int freeit = *name == NULL;

	sz = FUNC2(nm) + 1;
	len = 0;
	if (*name != NULL)
		cp = *name;
	else
		cp = *name = FUNC1(sz);
	if (*name == NULL)
		return (ENOMEM);

	while (*nm) {
		c = *nm++;
		if (c > 0x7ff) {
			if (len++ < sz)
				*cp++ = (char)(0xE0 | (c >> 12));
			if (len++ < sz)
				*cp++ = (char)(0x80 | ((c >> 6) & 0x3f));
			if (len++ < sz)
				*cp++ = (char)(0x80 | (c & 0x3f));
		} else if (c > 0x7f) {
			if (len++ < sz)
				*cp++ = (char)(0xC0 | ((c >> 6) & 0x1f));
			if (len++ < sz)
				*cp++ = (char)(0x80 | (c & 0x3f));
		} else {
			if (len++ < sz)
				*cp++ = (char)(c & 0x7f);
		}
	}

	if (len >= sz) {
		/* Absent bugs, we'll never return EOVERFLOW */
		if (freeit) {
			FUNC0(*name);
			*name = NULL;
		}
		return (EOVERFLOW);
	}
	*cp++ = '\0';

	return (0);
}
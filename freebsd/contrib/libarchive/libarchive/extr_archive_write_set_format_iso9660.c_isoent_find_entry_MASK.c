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
struct isoent {int /*<<< orphan*/  dir; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_MAX ; 
 int _MAX_FNAME ; 
 int FUNC0 (char*,int,char const*) ; 
 struct isoent* FUNC1 (struct isoent*,char*) ; 

__attribute__((used)) static struct isoent *
FUNC2(struct isoent *rootent, const char *fn)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	char name[_MAX_FNAME];/* Included null terminator size. */
#elif defined(NAME_MAX) && NAME_MAX >= 255
	char name[NAME_MAX+1];
#else
	char name[256];
#endif
	struct isoent *isoent, *np;
	int l;

	isoent = rootent;
	np = NULL;
	for (;;) {
		l = FUNC0(name, sizeof(name), fn);
		if (l == 0)
			break;
		fn += l;
		if (fn[0] == '/')
			fn++;

		np = FUNC1(isoent, name);
		if (np == NULL)
			break;
		if (fn[0] == '\0')
			break;/* We found out the entry */

		/* Try sub directory. */
		isoent = np;
		np = NULL;
		if (!isoent->dir)
			break;/* Not directory */
	}

	return (np);
}
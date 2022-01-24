#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  elpath ;
struct TYPE_4__ {int /*<<< orphan*/  el_scratch; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 
 int FUNC7 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (char const) ; 
 int FUNC10 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t,char*,char*,char const*) ; 
 scalar_t__ FUNC12 (char*) ; 

int
FUNC13(EditLine *el, const char *fname)
{
	FILE *fp;
	size_t len;
	ssize_t slen;
	char *ptr;
	char *path = NULL;
	const wchar_t *dptr;
	int error = 0;

	fp = NULL;
	if (fname == NULL) {
#ifdef HAVE_ISSETUGID
		if (issetugid())
			return -1;

		if ((fname = getenv("EDITRC")) == NULL) {
			static const char elpath[] = "/.editrc";
			size_t plen = sizeof(elpath);

			if ((ptr = getenv("HOME")) == NULL)
				return -1;
			plen += strlen(ptr);
			if ((path = el_calloc(plen, sizeof(*path))) == NULL)
				return -1;
			(void)snprintf(path, plen, "%s%s", ptr,
				elpath + (*ptr == '\0'));
			fname = path;
		}
#else
		/*
		 * If issetugid() is missing, always return an error, in order
		 * to keep from inadvertently opening up the user to a security
		 * hole.
		 */
		return -1;
#endif
	}
	if (fname[0] == '\0')
		return -1;

	if (fp == NULL)
		fp = FUNC4(fname, "r");
	if (fp == NULL) {
		FUNC2(path);
		return -1;
	}

	ptr = NULL;
	len = 0;
	while ((slen = FUNC7(&ptr, &len, fp)) != -1) {
		if (*ptr == '\n')
			continue;	/* Empty line. */
		if (slen > 0 && ptr[--slen] == '\n')
			ptr[slen] = '\0';

		dptr = FUNC0(ptr, &el->el_scratch);
		if (!dptr)
			continue;
		/* loop until first non-space char or EOL */
		while (*dptr != '\0' && FUNC9(*dptr))
			dptr++;
		if (*dptr == '#')
			continue;   /* ignore, this is a comment line */
		if ((error = FUNC10(el, dptr)) == -1)
			break;
	}
	FUNC5(ptr);

	FUNC2(path);
	(void) FUNC3(fp);
	return error;
}
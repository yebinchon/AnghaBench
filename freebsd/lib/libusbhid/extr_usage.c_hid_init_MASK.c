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
struct usage_page {size_t pagesize; size_t pagesizemax; char* name; int usage; struct usage_page* page_contents; } ;
struct usage_in_page {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* _PATH_HIDTABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char) ; 
 void* FUNC7 (int) ; 
 int npages ; 
 int npagesmax ; 
 struct usage_page* pages ; 
 void* FUNC8 (struct usage_page*,int) ; 
 int FUNC9 (char*,char*,...) ; 
 char* FUNC10 (char*) ; 

void
FUNC11(const char *hidname)
{
	FILE *f;
	char line[100], name[100], *p, *n;
	int no;
	int lineno;
	struct usage_page *curpage = NULL;

	if (hidname == NULL)
		hidname = _PATH_HIDTABLE;

	f = FUNC5(hidname, "r");
	if (f == NULL)
		FUNC1(1, "%s", hidname);
	for (lineno = 1; ; lineno++) {
		if (FUNC4(line, sizeof line, f) == NULL)
			break;
		if (line[0] == '#')
			continue;
		for (p = line; *p && FUNC6(*p); p++)
			;
		if (!*p)
			continue;
		if (FUNC9(line, " * %[^\n]", name) == 1)
			no = -1;
		else if (FUNC9(line, " 0x%x %[^\n]", &no, name) != 2 &&
			 FUNC9(line, " %d %[^\n]", &no, name) != 2)
			FUNC2(1, "file %s, line %d, syntax error",
			     hidname, lineno);
		for (p = name; *p; p++)
			if (FUNC6(*p) || *p == '.')
				*p = '_';
		n = FUNC10(name);
		if (!n)
			FUNC1(1, "strdup");
		if (FUNC6(line[0])) {
			if (!curpage)
				FUNC2(1, "file %s, line %d, syntax error",
				     hidname, lineno);
			if (curpage->pagesize >= curpage->pagesizemax) {
				curpage->pagesizemax += 10;
				curpage->page_contents =
					FUNC8(curpage->page_contents,
						curpage->pagesizemax *
						sizeof (struct usage_in_page));
				if (!curpage->page_contents)
					FUNC1(1, "realloc");
			}
			curpage->page_contents[curpage->pagesize].name = n;
			curpage->page_contents[curpage->pagesize].usage = no;
			curpage->pagesize++;
		} else {
			if (npages >= npagesmax) {
				if (pages == NULL) {
					npagesmax = 5;
					pages = FUNC7(npagesmax *
						  sizeof (struct usage_page));
				} else {
					npagesmax += 5;
					pages = FUNC8(pages,
						   npagesmax *
						   sizeof (struct usage_page));
				}
				if (!pages)
					FUNC1(1, "alloc");
			}
			curpage = &pages[npages++];
			curpage->name = n;
			curpage->usage = no;
			curpage->pagesize = 0;
			curpage->pagesizemax = 10;
			curpage->page_contents =
				FUNC7(curpage->pagesizemax *
				       sizeof (struct usage_in_page));
			if (!curpage->page_contents)
				FUNC1(1, "malloc");
		}
	}
	FUNC3(f);
#ifdef DEBUG
	dump_hid_table();
#endif
}
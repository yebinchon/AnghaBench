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
typedef  void dba_array ;
typedef  enum form { ____Placeholder_form } form ;

/* Variables and functions */
 int DBA_GROW ; 
 int DBA_STR ; 
 int DBP_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (char const*) ; 
 void* FUNC3 (char const*,int) ; 

struct dba_array *
FUNC4(struct dba_array *pages, const char *arch,
    const char *desc, const char *file, enum form form)
{
	struct dba_array *page, *entry;

	page = FUNC1(DBP_MAX, 0);
	entry = FUNC1(1, DBA_STR | DBA_GROW);
	FUNC0(page, entry);
	entry = FUNC1(1, DBA_STR | DBA_GROW);
	FUNC0(page, entry);
	if (arch != NULL && *arch != '\0') {
		entry = FUNC1(1, DBA_STR | DBA_GROW);
		FUNC0(entry, (void *)arch);
	} else
		entry = NULL;
	FUNC0(page, entry);
	FUNC0(page, FUNC2(desc));
	entry = FUNC1(1, DBA_STR | DBA_GROW);
	FUNC0(entry, FUNC3(file, form));
	FUNC0(page, entry);
	FUNC0(pages, page);
	return page;
}
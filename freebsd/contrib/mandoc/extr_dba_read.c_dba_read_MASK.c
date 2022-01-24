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
struct dbm_page {char* arch; char* file; char* name; char* sect; int /*<<< orphan*/  desc; } ;
struct dbm_macro {int /*<<< orphan*/  pp; int /*<<< orphan*/  value; } ;
struct dba_array {int dummy; } ;
struct dba {int /*<<< orphan*/  pages; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBP_ARCH ; 
 int /*<<< orphan*/  DBP_FILE ; 
 int /*<<< orphan*/  DBP_NAME ; 
 int /*<<< orphan*/  DBP_SECT ; 
 int MACRO_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct dba*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dba* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dba_array*,int /*<<< orphan*/ ,char const*) ; 
 struct dba_array* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 struct dbm_macro* FUNC6 (int,int) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 () ; 
 struct dbm_page* FUNC9 (int) ; 
 char* FUNC10 (char const*,char) ; 

struct dba *
FUNC11(const char *fname)
{
	struct dba		*dba;
	struct dba_array	*page;
	struct dbm_page		*pdata;
	struct dbm_macro	*mdata;
	const char		*cp;
	int32_t			 im, ip, iv, npages;

	if (FUNC7(fname) == -1)
		return NULL;
	npages = FUNC8();
	dba = FUNC1(npages < 128 ? 128 : npages);
	for (ip = 0; ip < npages; ip++) {
		pdata = FUNC9(ip);
		page = FUNC3(dba->pages, pdata->arch,
		    pdata->desc, pdata->file + 1, *pdata->file);
		for (cp = pdata->name; *cp != '\0'; cp = FUNC10(cp, '\0') + 1)
			FUNC2(page, DBP_NAME, cp);
		for (cp = pdata->sect; *cp != '\0'; cp = FUNC10(cp, '\0') + 1)
			FUNC2(page, DBP_SECT, cp);
		if ((cp = pdata->arch) != NULL)
			while (*(cp = FUNC10(cp, '\0') + 1) != '\0')
				FUNC2(page, DBP_ARCH, cp);
		cp = pdata->file;
		while (*(cp = FUNC10(cp, '\0') + 1) != '\0')
			FUNC2(page, DBP_FILE, cp);
	}
	for (im = 0; im < MACRO_MAX; im++) {
		for (iv = 0; iv < FUNC5(im); iv++) {
			mdata = FUNC6(im, iv);
			FUNC0(dba, im, mdata->value, mdata->pp);
		}
	}
	FUNC4();
	return dba;
}
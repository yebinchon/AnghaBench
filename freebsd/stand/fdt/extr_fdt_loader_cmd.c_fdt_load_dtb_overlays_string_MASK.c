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
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(const char * filenames)
{
	char *names;
	char *name, *name_ext;
	char *comaptr;
	int err, namesz;

	FUNC0("fdt_load_dtb_overlays_string(%s)\n", filenames);

	names = FUNC7(filenames);
	if (names == NULL)
		return (1);
	name = names;
	do {
		comaptr = FUNC6(name, ',');
		if (comaptr)
			*comaptr = '\0';
		err = FUNC1(name);
		if (err == FDT_ERR_NOTFOUND) {
			/* Allocate enough to append ".dtbo" */
			namesz = FUNC8(name) + 6;
			name_ext = FUNC4(namesz);
			if (name_ext == NULL) {
				FUNC2(err, name);
				name = comaptr + 1;
				continue;
			}
			FUNC5(name_ext, namesz, "%s.dtbo", name);
			err = FUNC1(name_ext);
			FUNC3(name_ext);
		}
		/* Catch error with either initial load or fallback load */
		if (err != 0)
			FUNC2(err, name);
		name = comaptr + 1;
	} while(comaptr);

	FUNC3(names);
	return (0);
}
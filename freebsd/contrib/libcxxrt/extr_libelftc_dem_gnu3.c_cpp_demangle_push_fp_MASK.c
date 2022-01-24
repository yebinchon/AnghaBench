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
struct cpp_demangle_data {char* cur; } ;

/* Variables and functions */
 int FUNC0 (struct cpp_demangle_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct cpp_demangle_data *ddata,
    char *(*decoder)(const char *, size_t))
{
	size_t len;
	int rtn;
	const char *fp;
	char *f;

	if (ddata == NULL || decoder == NULL)
		return (0);

	fp = ddata->cur;
	while (*ddata->cur != 'E')
		++ddata->cur;

	if ((f = decoder(fp, ddata->cur - fp)) == NULL)
		return (0);

	rtn = 0;
	if ((len = FUNC2(f)) > 0)
		rtn = FUNC0(ddata, f, len);

	FUNC1(f);

	++ddata->cur;

	return (rtn);
}
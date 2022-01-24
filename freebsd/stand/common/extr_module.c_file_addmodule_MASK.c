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
struct preloaded_file {struct kernel_module* f_modules; } ;
struct mod_depend {int md_ver_preferred; } ;
struct kernel_module {int m_version; struct kernel_module* m_next; struct preloaded_file* m_fp; int /*<<< orphan*/ * m_name; } ;
typedef  int /*<<< orphan*/  mdepend ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mod_depend*,int) ; 
 struct kernel_module* FUNC1 (int,int) ; 
 struct kernel_module* FUNC2 (struct preloaded_file*,char*,struct mod_depend*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernel_module*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

int
FUNC5(struct preloaded_file *fp, char *modname, int version,
	struct kernel_module **newmp)
{
	struct kernel_module *mp;
	struct mod_depend mdepend;

	FUNC0(&mdepend, sizeof(mdepend));
	mdepend.md_ver_preferred = version;
	mp = FUNC2(fp, modname, &mdepend);
	if (mp)
		return (EEXIST);
	mp = FUNC1(1, sizeof(struct kernel_module));
	if (mp == NULL)
		return (ENOMEM);
	mp->m_name = FUNC4(modname);
	if (mp->m_name == NULL) {
		FUNC3(mp);
		return (ENOMEM);
	}
	mp->m_version = version;
	mp->m_fp = fp;
	mp->m_next = fp->f_modules;
	fp->f_modules = mp;
	if (newmp)
		*newmp = mp;
	return (0);
}
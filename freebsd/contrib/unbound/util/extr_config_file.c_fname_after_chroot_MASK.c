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
struct config_file {char const* chrootdir; char* directory; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,struct config_file*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 

char*
FUNC6(const char* fname, struct config_file* cfg, int use_chdir)
{
	size_t len = FUNC4(fname, cfg, use_chdir)+1;
	int slashit = 0;
	char* buf = (char*)FUNC0(len);
	if(!buf)
		return NULL;
	buf[0] = 0;
	/* is fname already in chroot ? */
	if(cfg->chrootdir && cfg->chrootdir[0] && 
		FUNC5(cfg->chrootdir, fname, FUNC3(cfg->chrootdir)) == 0) {
		/* already full pathname, return it */
		(void)FUNC2(buf, fname, len);
		buf[len-1] = 0;
		return buf;
	}
	/* chroot */
	if(cfg->chrootdir && cfg->chrootdir[0]) {
		/* start with chrootdir */
		(void)FUNC2(buf, cfg->chrootdir, len);
		slashit = 1;
	}
#ifdef UB_ON_WINDOWS
	if(fname[0] != 0 && fname[1] == ':') {
		/* full path, no chdir */
	} else
#endif
	/* chdir */
	if(fname[0] == '/' || !use_chdir) {
		/* full path, no chdir */
	} else if(cfg->directory && cfg->directory[0]) {
		/* prepend chdir */
		if(slashit && cfg->directory[0] != '/')
			(void)FUNC1(buf, "/", len);
		/* is the directory already in the chroot? */
		if(cfg->chrootdir && cfg->chrootdir[0] && 
			FUNC5(cfg->chrootdir, cfg->directory, 
			FUNC3(cfg->chrootdir)) == 0)
			(void)FUNC1(buf, cfg->directory+FUNC3(cfg->chrootdir), 
				   len);
		else (void)FUNC1(buf, cfg->directory, len);
		slashit = 1;
	}
	/* fname */
	if(slashit && fname[0] != '/')
		(void)FUNC1(buf, "/", len);
	(void)FUNC1(buf, fname, len);
	buf[len-1] = 0;
	return buf;
}
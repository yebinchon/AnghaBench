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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static size_t
FUNC2(const char* fname, struct config_file* cfg, int use_chdir)
{
	size_t len = 0;
	int slashit = 0;
	if(cfg->chrootdir && cfg->chrootdir[0] && 
		FUNC1(cfg->chrootdir, fname, FUNC0(cfg->chrootdir)) == 0) {
		/* already full pathname, return it */
		return FUNC0(fname);
	}
	/* chroot */
	if(cfg->chrootdir && cfg->chrootdir[0]) {
		/* start with chrootdir */
		len += FUNC0(cfg->chrootdir);
		slashit = 1;
	}
	/* chdir */
#ifdef UB_ON_WINDOWS
	if(fname[0] != 0 && fname[1] == ':') {
		/* full path, no chdir */
	} else
#endif
	if(fname[0] == '/' || !use_chdir) {
		/* full path, no chdir */
	} else if(cfg->directory && cfg->directory[0]) {
		/* prepend chdir */
		if(slashit && cfg->directory[0] != '/')
			len++;
		if(cfg->chrootdir && cfg->chrootdir[0] && 
			FUNC1(cfg->chrootdir, cfg->directory, 
			FUNC0(cfg->chrootdir)) == 0)
			len += FUNC0(cfg->directory)-FUNC0(cfg->chrootdir);
		else	len += FUNC0(cfg->directory);
		slashit = 1;
	}
	/* fname */
	if(slashit && fname[0] != '/')
		len++;
	len += FUNC0(fname);
	return len;
}
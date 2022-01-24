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
struct utsname {char* release; } ;

/* Variables and functions */
 int FUNC0 (char*,char**,int) ; 
 scalar_t__ FUNC1 (struct utsname*) ; 

__attribute__((used)) static int
FUNC2(void)
{
	struct utsname utsname;
	char *version_component, *endp;
	int major, minor, subminor;

	if (FUNC1(&utsname) == 0) {
		/*
		 * 2.6.21 is the first release with the binary-mode
		 * USB monitoring.
		 */
		version_component = utsname.release;
		major = FUNC0(version_component, &endp, 10);
		if (endp != version_component && *endp == '.') {
			/*
			 * OK, that was a valid major version.
			 * Is it 3 or greater?  If so, we have binary
			 * mode support.
			 */
			if (major >= 3)
				return 1;

			/*
			 * Is it 1 or less?  If so, we don't have binary
			 * mode support.  (In fact, we don't have any
			 * USB monitoring....)
			 */
			if (major <= 1)
				return 0;
		}

		/*
		 * OK, this is a 2.x kernel.
		 * What's the minor version?
		 */
		version_component = endp + 1;
		minor = FUNC0(version_component, &endp, 10);
		if (endp != version_component &&
		    (*endp == '.' || *endp == '\0')) {
			/*
			 * OK, that was a valid minor version.
			 * Is is 2.6 or later?  (There shouldn't be a
			 * "later", as 2.6.x went to 3.x, but we'll
			 * check anyway.)
			 */
			if (minor < 6) {
				/*
				 * No, so no binary support (did 2.4 have
				 * any USB monitoring at all?)
				 */
				return 0;
			}

			/*
			 * OK, this is a 2.6.x kernel.
			 * What's the subminor version?
			 */
			version_component = endp + 1;
			subminor = FUNC0(version_component, &endp, 10);
			if (endp != version_component &&
			    (*endp == '.' || *endp == '\0')) {
				/*
				 * OK, that was a valid subminor version.
				 * Is it 21 or greater?
				 */
				if (subminor >= 21) {
					/*
					 * Yes - we have binary mode
					 * support.
					 */
					return 1;
				}
			}
		}
	}

	/*
	 * Either uname() failed, in which case we just say "no binary
	 * mode support", or we don't have binary mode support.
	 */
	return 0;
}
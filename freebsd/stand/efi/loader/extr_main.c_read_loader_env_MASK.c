#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINTN ;
struct TYPE_2__ {int /*<<< orphan*/  DeviceHandle; } ;

/* Variables and functions */
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 scalar_t__ EFI_SUCCESS ; 
 TYPE_1__* boot_img ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(const char *name, char *def_fn, bool once)
{
	UINTN len;
	char *fn, *freeme = NULL;

	len = 0;
	fn = def_fn;
	if (FUNC1(name, NULL, &len) == EFI_BUFFER_TOO_SMALL) {
		freeme = fn = FUNC3(len + 1);
		if (fn != NULL) {
			if (FUNC1(name, fn, &len) != EFI_SUCCESS) {
				FUNC2(fn);
				fn = NULL;
				FUNC5(
			    "Can't fetch FreeBSD::%s we know is there\n", name);
			} else {
				/*
				 * if tagged as 'once' delete the env variable so we
				 * only use it once.
				 */
				if (once)
					FUNC0(name);
				/*
				 * We malloced 1 more than len above, then redid the call.
				 * so now we have room at the end of the string to NUL terminate
				 * it here, even if the typical idium would have '- 1' here to
				 * not overflow. len should be the same on return both times.
				 */
				fn[len] = '\0';
			}
		} else {
			FUNC5(
		    "Can't allocate %d bytes to fetch FreeBSD::%s env var\n",
			    len, name);
		}
	}
	if (fn) {
		FUNC5("    Reading loader env vars from %s\n", fn);
		FUNC4(boot_img->DeviceHandle, fn);
	}
}
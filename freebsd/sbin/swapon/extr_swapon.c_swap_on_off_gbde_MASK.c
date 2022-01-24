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
typedef  int /*<<< orphan*/  pass ;
typedef  int /*<<< orphan*/  bpass ;

/* Variables and functions */
 scalar_t__ SWAPOFF ; 
 scalar_t__ SWAPON ; 
 int /*<<< orphan*/  _PATH_GBDE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ qflag ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned char) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ which_prog ; 

__attribute__((used)) static const char *
FUNC7(const char *name, int doingall)
{
	const char *ret;
	char pass[64 * 2 + 1];
	unsigned char bpass[64];
	char *dname;
	int i, error;

	dname = FUNC4(name);
	if (dname == NULL)
		return (NULL);

	if (which_prog == SWAPON) {
		FUNC0(bpass, sizeof(bpass));
		for (i = 0; i < (int)sizeof(bpass); i++)
			FUNC3(&pass[2 * i], "%02x", bpass[i]);
		pass[sizeof(pass) - 1] = '\0';

		error = FUNC2(NULL, "%s init %s -P %s", _PATH_GBDE,
		    dname, pass);
		if (error) {
			/* bde device found.  Ignore it. */
			FUNC1(dname);
			if (qflag == 0)
				FUNC6("%s: Device already in use", name);
			return (NULL);
		}
		error = FUNC2(NULL, "%s attach %s -p %s", _PATH_GBDE,
		    dname, pass);
		FUNC1(dname);
		if (error) {
			FUNC6("gbde (attach) error: %s", name);
			return (NULL);
		}
	}

	ret = FUNC5(name, doingall);

	if (which_prog == SWAPOFF) {
		error = FUNC2(NULL, "%s detach %s", _PATH_GBDE, dname);
		FUNC1(dname);
		if (error) {
			/* bde device not found.  Ignore it. */
			if (qflag == 0)
				FUNC6("%s: Device not found", name);
			return (NULL);
		}
	}

	return (ret);
}
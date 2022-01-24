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
struct casper_service {int /*<<< orphan*/  cs_service; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTCAPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ *) ; 
 struct casper_service* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int FUNC13 (int*,int*) ; 

__attribute__((used)) static int
FUNC14(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	struct casper_service *casserv;
	const char *servname;
	nvlist_t *nvl;
	int chanfd, procfd, error;

	if (FUNC12(cmd, "open") != 0)
		return (EINVAL);
	if (!FUNC6(nvlin, "service"))
		return (EINVAL);

	servname = FUNC7(nvlin, "service");
	casserv = FUNC10(servname);
	if (casserv == NULL)
		return (ENOENT);

	if (!FUNC0(limits, servname))
		return (ENOTCAPABLE);

	if (FUNC13(&chanfd, &procfd) == -1)
		return (errno);

	nvl = FUNC4(0);
	FUNC3(nvl, "service", servname);
	FUNC8(nvl, "procfd", procfd);
	if (FUNC9(chanfd, nvl) == -1) {
		error = errno;
		FUNC5(nvl);
		FUNC1(chanfd);
		return (error);
	}
	FUNC5(nvl);

	FUNC8(nvlout, "chanfd", chanfd);
	FUNC2(nvlout, "chanflags",
	    FUNC11(casserv->cs_service));

	return (0);
}
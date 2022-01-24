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
typedef  int /*<<< orphan*/  uint64_t ;
struct service_connection {int dummy; } ;
struct service {int s_flags; int (* s_limit ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* s_command ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int CASPER_SERVICE_NO_UNIQ_LIMITS ; 
 int EDOOFUS ; 
 int EOPNOTSUPP ; 
 int NV_FLAG_NO_UNIQUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (struct service*,struct service_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct service_connection*) ; 
 int /*<<< orphan*/ * FUNC12 (struct service_connection*) ; 
 int /*<<< orphan*/  FUNC13 (struct service*,struct service_connection*) ; 
 int /*<<< orphan*/  FUNC14 (struct service_connection*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC18(struct service *service, struct service_connection *sconn)
{
	nvlist_t *nvlin, *nvlout;
	const char *cmd;
	int error, flags;

	flags = 0;
	if ((service->s_flags & CASPER_SERVICE_NO_UNIQ_LIMITS) != 0)
		flags = NV_FLAG_NO_UNIQUE;

	nvlin = FUNC0(FUNC11(sconn));
	if (nvlin == NULL) {
		FUNC13(service, sconn);
		return;
	}

	error = EDOOFUS;
	nvlout = FUNC5(flags);

	cmd = FUNC7(nvlin, "cmd");
	if (FUNC15(cmd, "limit_set") == 0) {
		nvlist_t *nvllim;

		nvllim = FUNC9(nvlin, "limits");
		if (service->s_limit == NULL) {
			error = EOPNOTSUPP;
		} else {
			error = service->s_limit(
			    FUNC12(sconn), nvllim);
		}
		if (error == 0) {
			FUNC14(sconn, nvllim);
			/* Function consumes nvllim. */
		} else {
			FUNC6(nvllim);
		}
	} else if (FUNC15(cmd, "limit_get") == 0) {
		const nvlist_t *nvllim;

		nvllim = FUNC12(sconn);
		if (nvllim != NULL)
			FUNC4(nvlout, "limits", nvllim);
		else
			FUNC2(nvlout, "limits");
		error = 0;
	} else if (FUNC15(cmd, "clone") == 0) {
		int sock;

		sock = FUNC10(service, sconn);
		if (sock == -1) {
			error = errno;
		} else {
			FUNC8(nvlout, "sock", sock);
			error = 0;
		}
	} else {
		error = service->s_command(cmd,
		    FUNC12(sconn), nvlin, nvlout);
	}

	FUNC6(nvlin);
	FUNC3(nvlout, "error", (uint64_t)error);

	if (FUNC1(FUNC11(sconn), nvlout) == -1)
		FUNC13(service, sconn);

	FUNC6(nvlout);
}
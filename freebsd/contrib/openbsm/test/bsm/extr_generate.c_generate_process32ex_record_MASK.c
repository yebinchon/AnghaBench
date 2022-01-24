#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  token_t ;
struct TYPE_3__ {scalar_t__ at_type; int /*<<< orphan*/ * at_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AUE_NULL ; 
 scalar_t__ AU_IPv4 ; 
 scalar_t__ AU_IPv6 ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  process32_auid ; 
 int /*<<< orphan*/  process32_egid ; 
 int /*<<< orphan*/  process32_euid ; 
 int /*<<< orphan*/  process32_pid ; 
 int /*<<< orphan*/  process32_rgid ; 
 int /*<<< orphan*/  process32_ruid ; 
 int /*<<< orphan*/  process32_sid ; 
 TYPE_1__ process32_tid_addr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(const char *directory, const char *record_filename,
    u_int32_t type)
{
	token_t *process32ex_token;
	char *buf;

	buf = (char *)FUNC5(FUNC7(record_filename) + 6);
	if (type == AU_IPv6) {
		FUNC4(AF_INET6, "fe80::1", process32_tid_addr.at_addr);
		process32_tid_addr.at_type = AU_IPv6;
		FUNC6(buf, "%s%s", record_filename, "-IPv6");
	} else {
		process32_tid_addr.at_addr[0] = FUNC3("127.0.0.1");
		process32_tid_addr.at_type = AU_IPv4;
		FUNC6(buf, "%s%s", record_filename, "-IPv4");
	}

	process32ex_token = FUNC0(process32_auid, process32_euid,
	    process32_egid, process32_ruid, process32_rgid, process32_pid,
	    process32_sid, &process32_tid_addr);
	if (process32ex_token == NULL)
		FUNC1(EX_UNAVAILABLE, "au_to_process32_ex");
	FUNC8(directory, buf, process32ex_token, AUE_NULL);
	FUNC2(buf);
}
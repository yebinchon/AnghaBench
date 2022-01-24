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
 scalar_t__ AU_IPv4 ; 
 scalar_t__ AU_IPv6 ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  subject32_auid ; 
 int /*<<< orphan*/  subject32_egid ; 
 int /*<<< orphan*/  subject32_euid ; 
 int /*<<< orphan*/  subject32_pid ; 
 int /*<<< orphan*/  subject32_rgid ; 
 int /*<<< orphan*/  subject32_ruid ; 
 int /*<<< orphan*/  subject32_sid ; 
 TYPE_1__ subject32_tid_addr ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(const char *directory, const char *token_filename,
    u_int32_t type)
{
	token_t *subject32ex_token;
	char *buf;

	buf = (char *)FUNC5(FUNC7(token_filename) + 6);
	if (type == AU_IPv6) {
		FUNC4(AF_INET6, "fe80::1", subject32_tid_addr.at_addr);
		subject32_tid_addr.at_type = AU_IPv6;
		FUNC6(buf, "%s%s", token_filename, "-IPv6");
	} else {
		subject32_tid_addr.at_addr[0] = FUNC3("127.0.0.1");
		subject32_tid_addr.at_type = AU_IPv4;
		FUNC6(buf, "%s%s", token_filename, "-IPv4");
	}

	subject32ex_token = FUNC0(subject32_auid, subject32_euid,
	    subject32_egid, subject32_ruid, subject32_rgid, subject32_pid,
	    subject32_sid, &subject32_tid_addr);
	if (subject32ex_token == NULL)
		FUNC1(EX_UNAVAILABLE, "au_to_subject32_ex");
	FUNC8(directory, buf, subject32ex_token);
	FUNC2(buf);
}
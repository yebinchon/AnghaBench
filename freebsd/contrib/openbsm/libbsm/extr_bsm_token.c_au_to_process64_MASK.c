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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_3__ {int /*<<< orphan*/  machine; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ au_tid_t ;
typedef  int /*<<< orphan*/  au_id_t ;
typedef  int /*<<< orphan*/  au_asid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_PROCESS64 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC5(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid,
    pid_t pid, au_asid_t sid, au_tid_t *tid)
{
	token_t *t;
	u_char *dptr = NULL;

	FUNC4(t, dptr, sizeof(u_char) + 8 * sizeof(u_int32_t) +
	    sizeof(u_int64_t));
	if (t == NULL)
		return (NULL);

	FUNC1(dptr, AUT_PROCESS64);
	FUNC2(dptr, auid);
	FUNC2(dptr, euid);
	FUNC2(dptr, egid);
	FUNC2(dptr, ruid);
	FUNC2(dptr, rgid);
	FUNC2(dptr, pid);
	FUNC2(dptr, sid);
	FUNC3(dptr, tid->port);

	/*
	 * Note: Solaris will write out IPv6 addresses here as a 32-bit
	 * address type and 16 bytes of address, but for IPv4 addresses it
	 * simply writes the 4-byte address directly.  We support only IPv4
	 * addresses for process64 tokens.
	 */
	FUNC0(dptr, &tid->machine, sizeof(u_int32_t));

	return (t);
}
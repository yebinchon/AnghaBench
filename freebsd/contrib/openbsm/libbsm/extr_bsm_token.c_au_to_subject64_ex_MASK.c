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
struct TYPE_3__ {int /*<<< orphan*/ * at_addr; int /*<<< orphan*/  at_type; int /*<<< orphan*/  at_port; } ;
typedef  TYPE_1__ au_tid_addr_t ;
typedef  int /*<<< orphan*/  au_id_t ;
typedef  int /*<<< orphan*/  au_asid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_SUBJECT64_EX ; 
 int /*<<< orphan*/  AU_IPv4 ; 
 int /*<<< orphan*/  AU_IPv6 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 

token_t *
FUNC5(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid,
    gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
	token_t *t;
	u_char *dptr = NULL;

	if (tid->at_type == AU_IPv4)
		FUNC4(t, dptr, sizeof(u_char) +
		    7 * sizeof(u_int32_t) + sizeof(u_int64_t) +
		    2 * sizeof(u_int32_t));
	else if (tid->at_type == AU_IPv6)
		FUNC4(t, dptr, sizeof(u_char) +
		    7 * sizeof(u_int32_t) + sizeof(u_int64_t) +
		    5 * sizeof(u_int32_t));
	else {
		errno = EINVAL;
		return (NULL);
	}
	if (t == NULL)
		return (NULL);

	FUNC1(dptr, AUT_SUBJECT64_EX);
	FUNC2(dptr, auid);
	FUNC2(dptr, euid);
	FUNC2(dptr, egid);
	FUNC2(dptr, ruid);
	FUNC2(dptr, rgid);
	FUNC2(dptr, pid);
	FUNC2(dptr, sid);
	FUNC3(dptr, tid->at_port);
	FUNC2(dptr, tid->at_type);
	if (tid->at_type == AU_IPv6)
		FUNC0(dptr, &tid->at_addr[0], 4 * sizeof(u_int32_t));
	else
		FUNC0(dptr, &tid->at_addr[0], sizeof(u_int32_t));

	return (t);
}
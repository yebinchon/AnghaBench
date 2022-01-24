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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int at_type; int /*<<< orphan*/ * at_addr; } ;
struct auditinfo_addr {TYPE_1__ ai_termid; } ;
typedef  TYPE_1__ au_tid_addr_t ;
typedef  int /*<<< orphan*/  au_event_t ;
typedef  int /*<<< orphan*/  au_emod_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  AUDIT_HEADER_VERSION_OPENBSM ; 
 int /*<<< orphan*/  AUT_HEADER32_EX ; 
 int AU_IPv4 ; 
 int AU_IPv6 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC5(int rec_size, au_event_t e_type, au_emod_t e_mod,
    struct timeval tm, struct auditinfo_addr *aia)
{
	token_t *t;
	u_char *dptr = NULL;
	u_int32_t timems;
	au_tid_addr_t *tid;

	tid = &aia->ai_termid;
	if (tid->at_type != AU_IPv4 && tid->at_type != AU_IPv6)
		return (NULL);
	FUNC4(t, dptr, sizeof(u_char) + sizeof(u_int32_t) +
	    sizeof(u_char) + 2 * sizeof(u_int16_t) + 3 *
	    sizeof(u_int32_t) + tid->at_type);
	if (t == NULL)
		return (NULL);

	FUNC1(dptr, AUT_HEADER32_EX);
	FUNC3(dptr, rec_size);
	FUNC1(dptr, AUDIT_HEADER_VERSION_OPENBSM);
	FUNC2(dptr, e_type);
	FUNC2(dptr, e_mod);

	FUNC3(dptr, tid->at_type);
	if (tid->at_type == AU_IPv6)
		FUNC0(dptr, &tid->at_addr[0], 4 * sizeof(u_int32_t));
	else
		FUNC0(dptr, &tid->at_addr[0], sizeof(u_int32_t));
	timems = tm.tv_usec/1000;
	/* Add the timestamp */
	FUNC3(dptr, tm.tv_sec);
	FUNC3(dptr, timems);      /* We need time in ms. */

	return (t);
}
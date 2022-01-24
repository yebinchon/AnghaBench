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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct timeval {int tv_usec; int tv_sec; } ;
typedef  int /*<<< orphan*/  au_event_t ;
typedef  int /*<<< orphan*/  au_emod_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  AUDIT_HEADER_VERSION_OPENBSM ; 
 int /*<<< orphan*/  AUT_HEADER32 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC4(int rec_size, au_event_t e_type, au_emod_t e_mod,
    struct timeval tm)
{
	token_t *t;
	u_char *dptr = NULL;
	u_int32_t timems;

	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_int32_t) +
	    sizeof(u_char) + 2 * sizeof(u_int16_t) + 2 * sizeof(u_int32_t));
	if (t == NULL)
		return (NULL);

	FUNC0(dptr, AUT_HEADER32);
	FUNC2(dptr, rec_size);
	FUNC0(dptr, AUDIT_HEADER_VERSION_OPENBSM);
	FUNC1(dptr, e_type);
	FUNC1(dptr, e_mod);

	timems = tm.tv_usec/1000;
	/* Add the timestamp */
	FUNC2(dptr, tm.tv_sec);
	FUNC2(dptr, timems);	/* We need time in ms. */

	return (t);
}
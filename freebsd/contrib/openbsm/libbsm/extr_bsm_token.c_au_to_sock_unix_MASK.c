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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_SOCKUNIX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

token_t *
FUNC4(struct sockaddr_un *so)
{
	token_t *t;
	u_char *dptr;

	FUNC2(t, dptr, 3 * sizeof(u_char) + FUNC3(so->sun_path) + 1);
	if (t == NULL)
		return (NULL);

	FUNC1(dptr, AUT_SOCKUNIX);
	/* BSM token has two bytes for family */
	FUNC1(dptr, 0);
	FUNC1(dptr, so->sun_family);
	FUNC0(dptr, so->sun_path, FUNC3(so->sun_path) + 1);

	return (t);
}
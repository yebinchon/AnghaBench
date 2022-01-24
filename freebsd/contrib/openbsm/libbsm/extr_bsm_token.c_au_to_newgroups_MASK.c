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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_NEWGROUPS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC4(u_int16_t n, gid_t *groups)
{
	token_t *t;
	u_char *dptr = NULL;
	int i;

	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_int16_t) +
	    n * sizeof(u_int32_t));
	if (t == NULL)
		return (NULL);

	FUNC0(dptr, AUT_NEWGROUPS);
	FUNC1(dptr, n);
	for (i = 0; i < n; i++)
		FUNC2(dptr, groups[i]);

	return (t);
}
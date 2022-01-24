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
typedef  scalar_t__ u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  AUT_ZONENAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

token_t *
FUNC5(const char *zonename)
{
	u_char *dptr = NULL;
	u_int16_t textlen;
	token_t *t;

	textlen = FUNC4(zonename) + 1;
	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_int16_t) + textlen);
	if (t == NULL)
		return (NULL);

	FUNC1(dptr, AUT_ZONENAME);
	FUNC2(dptr, textlen);
	FUNC0(dptr, zonename, textlen);
	return (t);
}
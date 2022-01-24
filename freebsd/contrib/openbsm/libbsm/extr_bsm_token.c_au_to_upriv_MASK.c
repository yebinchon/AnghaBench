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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char AUT_UPRIV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (char*) ; 

token_t *
FUNC5(char sorf, char *priv)
{
	u_int16_t textlen;
	u_char *dptr;
	token_t *t;

	textlen = FUNC4(priv) + 1;
	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_char) +
	    sizeof(u_int16_t) + textlen);
	if (t == NULL)
		return (NULL);
	FUNC1(dptr, AUT_UPRIV);
	FUNC1(dptr, sorf);
	FUNC2(dptr, textlen);
	FUNC0(dptr, priv, textlen);
	return (t);
}
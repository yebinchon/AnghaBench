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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  AUT_PRIV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (char*) ; 

token_t *
FUNC5(char *privtypestr, char *privstr)
{
	u_int16_t	 type_len, priv_len;
	u_char		*dptr;
	token_t		*t;

	type_len = FUNC4(privtypestr) + 1;
	priv_len = FUNC4(privstr) + 1;
	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_int16_t) +
	    sizeof(u_int16_t) + type_len + priv_len);
	if (t == NULL)
		return (NULL);
	FUNC1(dptr, AUT_PRIV);
	FUNC2(dptr, type_len);
	FUNC0(dptr, privtypestr, type_len);
	FUNC2(dptr, priv_len);
	FUNC0(dptr, privstr, priv_len);
	return (t);
}
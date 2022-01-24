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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  wpa_debug_show_keys ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 

__attribute__((used)) static void FUNC8(const char *title, const EC_GROUP *group,
				  const EC_POINT *point)
{
	BIGNUM *x, *y;
	BN_CTX *ctx;
	char *x_str = NULL, *y_str = NULL;

	if (!wpa_debug_show_keys)
		return;

	ctx = FUNC1();
	x = FUNC4();
	y = FUNC4();
	if (!ctx || !x || !y ||
	    FUNC5(group, point, x, y, ctx) != 1)
		goto fail;

	x_str = FUNC2(x);
	y_str = FUNC2(y);
	if (!x_str || !y_str)
		goto fail;

	FUNC7(MSG_DEBUG, "%s (%s,%s)", title, x_str, y_str);

fail:
	FUNC6(x_str);
	FUNC6(y_str);
	FUNC3(x);
	FUNC3(y);
	FUNC0(ctx);
}
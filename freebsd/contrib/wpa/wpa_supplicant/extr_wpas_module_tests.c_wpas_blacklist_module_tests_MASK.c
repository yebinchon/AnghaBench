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
typedef  int /*<<< orphan*/  wpa_s ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct wpa_supplicant wpa_s;
	int ret = -1;

	FUNC0(&wpa_s, 0, sizeof(wpa_s));

	FUNC2(&wpa_s);

	if (FUNC4(NULL, NULL) != NULL ||
	    FUNC4(NULL, (u8 *) "123456") != NULL ||
	    FUNC4(&wpa_s, NULL) != NULL ||
	    FUNC4(&wpa_s, (u8 *) "123456") != NULL)
		goto fail;

	if (FUNC1(NULL, NULL) == 0 ||
	    FUNC1(NULL, (u8 *) "123456") == 0 ||
	    FUNC1(&wpa_s, NULL) == 0)
		goto fail;

	if (FUNC3(NULL, NULL) == 0 ||
	    FUNC3(NULL, (u8 *) "123456") == 0 ||
	    FUNC3(&wpa_s, NULL) == 0 ||
	    FUNC3(&wpa_s, (u8 *) "123456") == 0)
		goto fail;

	if (FUNC1(&wpa_s, (u8 *) "111111") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "111111") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "222222") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "333333") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "444444") < 0 ||
	    FUNC3(&wpa_s, (u8 *) "333333") < 0 ||
	    FUNC3(&wpa_s, (u8 *) "xxxxxx") == 0 ||
	    FUNC4(&wpa_s, (u8 *) "xxxxxx") != NULL ||
	    FUNC4(&wpa_s, (u8 *) "111111") == NULL ||
	    FUNC4(&wpa_s, (u8 *) "222222") == NULL ||
	    FUNC4(&wpa_s, (u8 *) "444444") == NULL ||
	    FUNC3(&wpa_s, (u8 *) "111111") < 0 ||
	    FUNC3(&wpa_s, (u8 *) "222222") < 0 ||
	    FUNC3(&wpa_s, (u8 *) "444444") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "111111") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "222222") < 0 ||
	    FUNC1(&wpa_s, (u8 *) "333333") < 0)
		goto fail;

	ret = 0;
fail:
	FUNC2(&wpa_s);

	if (ret)
		FUNC5(MSG_ERROR, "blacklist module test failure");

	return ret;
}
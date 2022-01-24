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
struct wpa_ssid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (struct wpa_ssid*,char const*,char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct wpa_ssid *ssid, const char *var,
			  const char *value)
{
	size_t len;
	char *buf;
	int ret;

	len = FUNC3(value);
	buf = FUNC1(len + 3);
	if (buf == NULL)
		return -1;
	buf[0] = '"';
	FUNC2(buf + 1, value, len);
	buf[len + 1] = '"';
	buf[len + 2] = '\0';
	ret = FUNC4(ssid, var, buf, 0);
	FUNC0(buf);
	return ret;
}
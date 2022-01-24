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
struct wpa_ssid {int auth_alg; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int WPA_AUTH_ALG_LEAP ; 
 int WPA_AUTH_ALG_OPEN ; 
 int WPA_AUTH_ALG_SHARED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int,char*,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static char * FUNC4(const struct parse_data *data,
					struct wpa_ssid *ssid)
{
	char *buf, *pos, *end;
	int ret;

	pos = buf = FUNC3(30);
	if (buf == NULL)
		return NULL;
	end = buf + 30;

	if (ssid->auth_alg & WPA_AUTH_ALG_OPEN) {
		ret = FUNC1(pos, end - pos, "%sOPEN",
				  pos == buf ? "" : " ");
		if (FUNC2(end - pos, ret)) {
			end[-1] = '\0';
			return buf;
		}
		pos += ret;
	}

	if (ssid->auth_alg & WPA_AUTH_ALG_SHARED) {
		ret = FUNC1(pos, end - pos, "%sSHARED",
				  pos == buf ? "" : " ");
		if (FUNC2(end - pos, ret)) {
			end[-1] = '\0';
			return buf;
		}
		pos += ret;
	}

	if (ssid->auth_alg & WPA_AUTH_ALG_LEAP) {
		ret = FUNC1(pos, end - pos, "%sLEAP",
				  pos == buf ? "" : " ");
		if (FUNC2(end - pos, ret)) {
			end[-1] = '\0';
			return buf;
		}
		pos += ret;
	}

	if (pos == buf) {
		FUNC0(buf);
		buf = NULL;
	}

	return buf;
}
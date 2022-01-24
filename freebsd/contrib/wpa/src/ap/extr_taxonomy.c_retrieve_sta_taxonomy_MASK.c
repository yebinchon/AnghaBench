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
struct sta_info {int /*<<< orphan*/  assoc_ie_taxonomy; int /*<<< orphan*/  probe_ie_taxonomy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 char* FUNC3 (char*,char) ; 

int FUNC4(const struct hostapd_data *hapd,
			  struct sta_info *sta, char *buf, size_t buflen)
{
	int ret;
	char *pos, *end;

	if (!sta->probe_ie_taxonomy || !sta->assoc_ie_taxonomy)
		return 0;

	ret = FUNC1(buf, buflen, "wifi4|probe:");
	if (FUNC2(buflen, ret))
		return 0;
	pos = buf + ret;
	end = buf + buflen;

	FUNC0(pos, end - pos, sta->probe_ie_taxonomy);
	pos = FUNC3(pos, '\0');
	if (pos >= end)
		return 0;
	ret = FUNC1(pos, end - pos, "|assoc:");
	if (FUNC2(end - pos, ret))
		return 0;
	pos += ret;
	FUNC0(pos, end - pos, sta->assoc_ie_taxonomy);
	pos = FUNC3(pos, '\0');
	return pos - buf;
}
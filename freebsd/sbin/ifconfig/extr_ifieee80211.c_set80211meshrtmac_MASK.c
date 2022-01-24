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
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_alen; } ;
typedef  int /*<<< orphan*/  sdl ;

/* Variables and functions */
 scalar_t__ IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_MESH_RTCMD ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sockaddr_dl*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(int s, int req, const char *val)
{
	char *temp;
	struct sockaddr_dl sdl;

	temp = FUNC4(FUNC7(val) + 2); /* ':' and '\0' */
	if (temp == NULL)
		FUNC1(1, "malloc failed");
	temp[0] = ':';
	FUNC6(temp + 1, val);
	sdl.sdl_len = sizeof(sdl);
	FUNC3(temp, &sdl);
	FUNC2(temp);
	if (sdl.sdl_alen != IEEE80211_ADDR_LEN)
		FUNC1(1, "malformed link-level address");
	FUNC5(s, IEEE80211_IOC_MESH_RTCMD, req,
	    IEEE80211_ADDR_LEN, FUNC0(&sdl));
}
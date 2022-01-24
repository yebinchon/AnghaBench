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
typedef  int /*<<< orphan*/  u_int8_t ;

/* Variables and functions */
 int IEEE80211_NWID_LEN ; 
 char* FUNC0 (char*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	char ssid[2*IEEE80211_NWID_LEN+1];

	FUNC1("%s<%.*s>", tag, FUNC0(ssid, maxlen, ie+2, ie[1]), ssid);
}
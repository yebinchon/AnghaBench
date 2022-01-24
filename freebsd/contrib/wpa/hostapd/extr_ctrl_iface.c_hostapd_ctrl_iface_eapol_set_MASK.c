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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int /*<<< orphan*/  eapol_sm; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd, char *cmd)
{
	u8 addr[ETH_ALEN];
	struct sta_info *sta;
	char *pos = cmd, *param;

	if (FUNC2(pos, addr) || pos[17] != ' ')
		return -1;
	pos += 18;
	param = pos;
	pos = FUNC3(pos, ' ');
	if (!pos)
		return -1;
	*pos++ = '\0';

	sta = FUNC0(hapd, addr);
	if (!sta || !sta->eapol_sm)
		return -1;

	return FUNC1(sta->eapol_sm, param, pos);
}
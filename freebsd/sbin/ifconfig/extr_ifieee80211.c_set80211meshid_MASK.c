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
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_MESH_ID ; 
 int IEEE80211_NWID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const char *val, int d, int s, const struct afswtch *rafp)
{
	int		len;
	u_int8_t	data[IEEE80211_NWID_LEN];

	FUNC2(data, 0, sizeof(data));
	len = sizeof(data);
	if (FUNC1(val, NULL, data, &len) == NULL)
		FUNC0(1);

	FUNC3(s, IEEE80211_IOC_MESH_ID, 0, len, data);
}
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
struct afswtch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_AMPDU ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	int ampdu;

	if (FUNC1(s, IEEE80211_IOC_AMPDU, &ampdu) < 0)
		FUNC0(-1, "cannot set AMPDU setting");
	if (d < 0) {
		d = -d;
		ampdu &= ~d;
	} else
		ampdu |= d;
	FUNC2(s, IEEE80211_IOC_AMPDU, ampdu, 0, NULL);
}
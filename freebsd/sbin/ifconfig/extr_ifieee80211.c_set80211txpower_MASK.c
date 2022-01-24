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
 int /*<<< orphan*/  IEEE80211_IOC_TXPOWER ; 
 double FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	double v = FUNC0(val);
	int txpow;

	txpow = (int) (2*v);
	if (txpow != 2*v)
		FUNC1(-1, "invalid tx power (must be .5 dBm units)");
	FUNC2(s, IEEE80211_IOC_TXPOWER, txpow, 0, NULL);
}
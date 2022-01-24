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
struct lagg_reqflags {int /*<<< orphan*/  rf_ifname; int /*<<< orphan*/  rf_flags; } ;
struct afswtch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAGG_F_HASHL2 ; 
 int /*<<< orphan*/  LAGG_F_HASHL3 ; 
 int /*<<< orphan*/  LAGG_F_HASHL4 ; 
 int /*<<< orphan*/  SIOCSLAGGHASH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct lagg_reqflags*) ; 
 int /*<<< orphan*/  name ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static void
FUNC8(const char *val, int d, int s, const struct afswtch *afp)
{
	struct lagg_reqflags rf;
	char *str, *tmp, *tok;


	rf.rf_flags = 0;
	str = tmp = FUNC5(val);
	while ((tok = FUNC7(&tmp, ",")) != NULL) {
		if (FUNC4(tok, "l2") == 0)
			rf.rf_flags |= LAGG_F_HASHL2;
		else if (FUNC4(tok, "l3") == 0)
			rf.rf_flags |= LAGG_F_HASHL3;
		else if (FUNC4(tok, "l4") == 0)
			rf.rf_flags |= LAGG_F_HASHL4;
		else
			FUNC1(1, "Invalid lagghash option: %s", tok);
	}
	FUNC2(str);
	if (rf.rf_flags == 0)
		FUNC1(1, "No lagghash options supplied");

	FUNC6(rf.rf_ifname, name, sizeof(rf.rf_ifname));
	if (FUNC3(s, SIOCSLAGGHASH, &rf))
		FUNC0(1, "SIOCSLAGGHASH");
}
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
struct regdomain {int /*<<< orphan*/  name; } ;
struct ieee80211_regdomain {scalar_t__ regdomain; scalar_t__ country; char location; scalar_t__ ecm; } ;
struct country {int /*<<< orphan*/  isoname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct country* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct regdomain* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(const struct ieee80211_regdomain *reg, int verb)
{
	if ((reg->regdomain != 0 &&
	    reg->regdomain != reg->country) || verb) {
		const struct regdomain *rd =
		    FUNC3(FUNC1(), reg->regdomain);
		if (rd == NULL)
			FUNC0("regdomain %d", reg->regdomain);
		else
			FUNC0("regdomain %s", rd->name);
	}
	if (reg->country != 0 || verb) {
		const struct country *cc =
		    FUNC2(FUNC1(), reg->country);
		if (cc == NULL)
			FUNC0("country %d", reg->country);
		else
			FUNC0("country %s", cc->isoname);
	}
	if (reg->location == 'I')
		FUNC0("indoor");
	else if (reg->location == 'O')
		FUNC0("outdoor");
	else if (verb)
		FUNC0("anywhere");
	if (reg->ecm)
		FUNC0("ecm");
	else if (verb)
		FUNC0("-ecm");
}
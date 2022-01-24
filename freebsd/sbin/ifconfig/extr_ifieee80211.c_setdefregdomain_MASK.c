#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regdomain {scalar_t__ sku; int /*<<< orphan*/ * cc; } ;
struct regdata {int dummy; } ;
struct TYPE_3__ {scalar_t__ regdomain; scalar_t__ country; scalar_t__* isocc; } ;

/* Variables and functions */
 scalar_t__ CTRY_DEFAULT ; 
 int /*<<< orphan*/  SKU_FCC ; 
 int /*<<< orphan*/  FUNC0 (struct regdomain const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct regdata* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct regdomain* FUNC4 (struct regdata*,int /*<<< orphan*/ ) ; 
 TYPE_1__ regdomain ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(int s)
{
	struct regdata *rdp = FUNC2();
	const struct regdomain *rd;

	/* Check if regdomain/country was already set by a previous call. */
	/* XXX is it possible? */
	if (regdomain.regdomain != 0 ||
	    regdomain.country != CTRY_DEFAULT)
		return;

	FUNC3(s);

	/* Check if it was already set by the driver. */
	if (regdomain.regdomain != 0 ||
	    regdomain.country != CTRY_DEFAULT)
		return;

	/* Set FCC/US as default. */
	rd = FUNC4(rdp, SKU_FCC);
	if (rd == NULL)
		FUNC1(1, "FCC regdomain was not found");

	regdomain.regdomain = rd->sku;
	if (rd->cc != NULL)
		FUNC0(rd);

	/* Send changes to net80211. */
	FUNC5(s, &regdomain);

	/* Cleanup (so it can be overriden by subsequent parameters). */
	regdomain.regdomain = 0;
	regdomain.country = CTRY_DEFAULT;
	regdomain.isocc[0] = 0;
	regdomain.isocc[1] = 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regdomain {int /*<<< orphan*/  name; TYPE_1__* cc; } ;
struct regdata {int dummy; } ;
struct country {int /*<<< orphan*/ * isoname; int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int /*<<< orphan*/ * isocc; int /*<<< orphan*/  country; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regdata* FUNC1 () ; 
 struct country* FUNC2 (struct regdata*,int /*<<< orphan*/ ) ; 
 TYPE_2__ regdomain ; 

__attribute__((used)) static void
FUNC3(const struct regdomain *rd)
{
	struct regdata *rdp = FUNC1();
	const struct country *cc;

	cc = FUNC2(rdp, rd->cc->code);
	if (cc == NULL)
		FUNC0(1, "internal error, ISO country code %d not "
		    "defined for regdomain %s", rd->cc->code, rd->name);
	regdomain.country = cc->code;
	regdomain.isocc[0] = cc->isoname[0];
	regdomain.isocc[1] = cc->isoname[1];
}
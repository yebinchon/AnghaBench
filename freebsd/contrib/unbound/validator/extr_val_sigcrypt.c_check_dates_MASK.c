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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct val_env {int date_override; int skew_min; int skew_max; } ;
typedef  int /*<<< orphan*/  incep ;
typedef  int /*<<< orphan*/  expi ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC6(struct val_env* ve, uint32_t unow,
	uint8_t* expi_p, uint8_t* incep_p, char** reason)
{
	/* read out the dates */
	uint32_t expi, incep, now;
	FUNC1(&expi, expi_p, sizeof(expi));
	FUNC1(&incep, incep_p, sizeof(incep));
	expi = FUNC2(expi);
	incep = FUNC2(incep);

	/* get current date */
	if(ve->date_override) {
		if(ve->date_override == -1) {
			FUNC5(VERB_ALGO, "date override: ignore date"); 
			return 1;
		}
		now = ve->date_override;
		FUNC5(VERB_ALGO, "date override option %d", (int)now); 
	} else	now = unow;

	/* check them */
	if(FUNC0(incep, expi) > 0) {
		FUNC3("verify: inception after expiration, "
			"signature bad", expi, incep, now);
		*reason = "signature inception after expiration";
		return 0;
	}
	if(FUNC0(incep, now) > 0) {
		/* within skew ? (calc here to avoid calculation normally) */
		uint32_t skew = FUNC4(incep, expi)/10;
		if(skew < (uint32_t)ve->skew_min) skew = ve->skew_min;
		if(skew > (uint32_t)ve->skew_max) skew = ve->skew_max;
		if(FUNC4(now, incep) > skew) {
			FUNC3("verify: signature bad, current time is"
				" before inception date", expi, incep, now);
			*reason = "signature before inception date";
			return 0;
		}
		FUNC3("verify warning suspicious signature inception "
			" or bad local clock", expi, incep, now);
	}
	if(FUNC0(now, expi) > 0) {
		uint32_t skew = FUNC4(incep, expi)/10;
		if(skew < (uint32_t)ve->skew_min) skew = ve->skew_min;
		if(skew > (uint32_t)ve->skew_max) skew = ve->skew_max;
		if(FUNC4(expi, now) > skew) {
			FUNC3("verify: signature expired", expi, 
				incep, now);
			*reason = "signature expired";
			return 0;
		}
		FUNC3("verify warning suspicious signature expiration "
			" or bad local clock", expi, incep, now);
	}
	return 1;
}
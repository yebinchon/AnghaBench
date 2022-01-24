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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ mflag ; 
 int /*<<< orphan*/  mname ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static RETSIGTYPE
FUNC4(int signo)
{
	int ointer;

	FUNC3("\n");
	FUNC1(stdout);
	if (mflag && fromatty) {
		ointer = interactive;
		interactive = 1;
		if (FUNC0("Continue with", mname)) {
			interactive = ointer;
			FUNC2(jabort,0);
		}
		interactive = ointer;
	}
	mflag = 0;
	FUNC2(jabort,0);
}
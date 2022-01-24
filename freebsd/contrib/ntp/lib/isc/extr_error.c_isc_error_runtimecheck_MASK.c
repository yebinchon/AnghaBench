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

/* Variables and functions */
 int /*<<< orphan*/  ISC_MSGSET_GENERAL ; 
 int /*<<< orphan*/  ISC_MSG_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC2(const char *file, int line, const char *expression) {
	FUNC0(file, line, "RUNTIME_CHECK(%s) %s", expression,
			FUNC1(isc_msgcat, ISC_MSGSET_GENERAL,
				       ISC_MSG_FAILED, "failed"));
}
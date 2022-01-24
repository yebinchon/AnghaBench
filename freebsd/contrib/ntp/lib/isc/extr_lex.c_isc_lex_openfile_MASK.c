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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_lex_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 

isc_result_t
FUNC5(isc_lex_t *lex, const char *filename) {
	isc_result_t result;
	FILE *stream = NULL;

	/*
	 * Open 'filename' and make it the current input source for 'lex'.
	 */

	FUNC0(FUNC1(lex));

	result = FUNC3(filename, "r", &stream);
	if (result != ISC_R_SUCCESS)
		return (result);

	result = FUNC4(lex, ISC_TRUE, ISC_TRUE, stream, filename);
	if (result != ISC_R_SUCCESS)
		(void)FUNC2(stream);
	return (result);
}
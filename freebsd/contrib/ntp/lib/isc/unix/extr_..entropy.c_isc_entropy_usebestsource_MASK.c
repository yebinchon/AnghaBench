#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_result_t ;
struct TYPE_4__ {int /*<<< orphan*/  warn_keyboard; } ;
typedef  TYPE_1__ isc_entropysource_t ;
typedef  int /*<<< orphan*/  isc_entropy_t ;
typedef  scalar_t__ isc_boolean_t ;

/* Variables and functions */
 int ISC_ENTROPY_KEYBOARDMAYBE ; 
 int ISC_ENTROPY_KEYBOARDNO ; 
 int ISC_ENTROPY_KEYBOARDYES ; 
 scalar_t__ ISC_FALSE ; 
 scalar_t__ ISC_R_NOENTROPY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISC_TRUE ; 
 char* PATH_RANDOMDEV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  kbdget ; 
 int /*<<< orphan*/  kbdstart ; 
 int /*<<< orphan*/  kbdstop ; 

isc_result_t
FUNC5(isc_entropy_t *ectx, isc_entropysource_t **source,
			  const char *randomfile, int use_keyboard)
{
	isc_result_t result;
	isc_result_t final_result = ISC_R_NOENTROPY;
	isc_boolean_t userfile = ISC_TRUE;

	FUNC1(FUNC2(ectx));
	FUNC1(source != NULL && *source == NULL);
	FUNC1(use_keyboard == ISC_ENTROPY_KEYBOARDYES ||
		use_keyboard == ISC_ENTROPY_KEYBOARDNO  ||
		use_keyboard == ISC_ENTROPY_KEYBOARDMAYBE);

#ifdef PATH_RANDOMDEV
	if (randomfile == NULL) {
		randomfile = PATH_RANDOMDEV;
		userfile = ISC_FALSE;
	}
#endif

	if (randomfile != NULL && use_keyboard != ISC_ENTROPY_KEYBOARDYES) {
		result = FUNC4(ectx, randomfile);
		if (result == ISC_R_SUCCESS &&
		    use_keyboard == ISC_ENTROPY_KEYBOARDMAYBE)
			use_keyboard = ISC_ENTROPY_KEYBOARDNO;
		if (result != ISC_R_SUCCESS && userfile)
			return (result);

		final_result = result;
	}

	if (use_keyboard != ISC_ENTROPY_KEYBOARDNO) {
		result = FUNC3(ectx, kbdstart,
							  kbdget, kbdstop,
							  NULL, source);
		if (result == ISC_R_SUCCESS)
			(*source)->warn_keyboard =
				FUNC0(use_keyboard ==
				       ISC_ENTROPY_KEYBOARDMAYBE);

		if (final_result != ISC_R_SUCCESS)
			final_result = result;
	}

	/*
	 * final_result is ISC_R_SUCCESS if at least one source of entropy
	 * could be started, otherwise it is the error from the most recently
	 * failed operation (or ISC_R_NOENTROPY if PATH_RANDOMDEV is not
	 * defined and use_keyboard is ISC_ENTROPY_KEYBOARDNO).
	 */
	return (final_result);
}
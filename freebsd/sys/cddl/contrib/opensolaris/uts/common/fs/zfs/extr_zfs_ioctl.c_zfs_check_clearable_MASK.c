#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(char *dataset, nvlist_t *props, nvlist_t **errlist)
{
	zfs_cmd_t *zc;
	nvpair_t *pair, *next_pair;
	nvlist_t *errors;
	int err, rv = 0;

	if (props == NULL)
		return (0);

	FUNC1(FUNC5(&errors, NV_UNIQUE_NAME, KM_SLEEP) == 0);

	zc = FUNC2(sizeof (zfs_cmd_t), KM_SLEEP);
	(void) FUNC11(zc->zc_name, dataset);
	pair = FUNC7(props, NULL);
	while (pair != NULL) {
		next_pair = FUNC7(props, pair);

		(void) FUNC11(zc->zc_value, FUNC9(pair));
		if ((err = FUNC12(dataset, pair, FUNC0())) != 0 ||
		    (err = FUNC13(zc, NULL, FUNC0())) != 0) {
			FUNC1(FUNC8(props, pair) == 0);
			FUNC1(FUNC4(errors,
			    zc->zc_value, err) == 0);
		}
		pair = next_pair;
	}
	FUNC3(zc, sizeof (zfs_cmd_t));

	if ((pair = FUNC7(errors, NULL)) == NULL) {
		FUNC6(errors);
		errors = NULL;
	} else {
		FUNC1(FUNC10(pair, &rv) == 0);
	}

	if (errlist == NULL)
		FUNC6(errors);
	else
		*errlist = errors;

	return (rv);
}
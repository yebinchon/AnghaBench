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
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int /*<<< orphan*/  za_name; scalar_t__ za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC9(objset_t *os, uint64_t fromobj, uint64_t intoobj,
    dmu_tx_t *tx)
{
	zap_cursor_t zc;
	int err = 0;

	zap_attribute_t *za = FUNC1(sizeof (*za), KM_SLEEP);
	for (FUNC5(&zc, os, fromobj);
	    FUNC6(&zc, za) == 0;
	    (void) FUNC3(&zc)) {
		uint64_t delta = 0;

		if (za->za_integer_length != 8 || za->za_num_integers != 1) {
			err = FUNC0(EINVAL);
			break;
		}

		err = FUNC7(os, intoobj, za->za_name, 8, 1, &delta);
		if (err != 0 && err != ENOENT)
			break;
		delta += za->za_first_integer;
		err = FUNC8(os, intoobj, za->za_name, 8, 1, &delta, tx);
		if (err != 0)
			break;
	}
	FUNC4(&zc);
	FUNC2(za, sizeof (*za));
	return (err);
}
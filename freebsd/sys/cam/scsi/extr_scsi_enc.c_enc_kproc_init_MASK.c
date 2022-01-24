#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* poll_status ) (TYPE_2__*) ;} ;
struct TYPE_12__ {TYPE_6__* periph; TYPE_1__ enc_vec; int /*<<< orphan*/  enc_daemon; int /*<<< orphan*/  status_updater; } ;
typedef  TYPE_2__ enc_softc_t ;
struct TYPE_13__ {int /*<<< orphan*/  unit_number; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  enc_daemon ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(enc_softc_t *enc)
{
	int result;

	FUNC0(&enc->status_updater, FUNC3(enc->periph), 0);

	if (FUNC1(enc->periph) != 0)
		return (ENXIO);

	result = FUNC6(enc_daemon, enc, &enc->enc_daemon, /*flags*/0,
			      /*stackpgs*/0, "enc_daemon%d",
			      enc->periph->unit_number);
	if (result == 0) {
		/* Do an initial load of all page data. */
		FUNC2(enc->periph);
		enc->enc_vec.poll_status(enc);
		FUNC5(enc->periph);
	} else
		FUNC4(enc->periph);
	return (result);
}
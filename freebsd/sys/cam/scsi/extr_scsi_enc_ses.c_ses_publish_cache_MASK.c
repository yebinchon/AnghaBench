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
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  uint8_t ;
struct enc_fsm_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  enc_cache_lock; int /*<<< orphan*/  enc_cache; int /*<<< orphan*/  enc_daemon_cache; } ;
typedef  TYPE_1__ enc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t **bufp, int error, int xfer_len)
{

	FUNC1(&enc->enc_cache_lock);
	FUNC0(enc, /*src*/&enc->enc_daemon_cache,
			/*dst*/&enc->enc_cache);
	FUNC2(&enc->enc_cache_lock);

	return (0);
}
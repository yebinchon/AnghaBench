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
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  bulk_rx; int /*<<< orphan*/  bulk_tx; int /*<<< orphan*/  bulk_mutex; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(VCHIQ_SERVICE_T *service)
{
	VCHIQ_STATUS_T status;

	/* Abort any outstanding bulk transfers */
	if (FUNC1(&service->bulk_mutex) != 0)
		return 0;
	FUNC0(service, &service->bulk_tx);
	FUNC0(service, &service->bulk_rx);
	FUNC2(&service->bulk_mutex);

	status = FUNC3(service, &service->bulk_tx, 0/*!retry_poll*/);
	if (status == VCHIQ_SUCCESS)
		status = FUNC3(service, &service->bulk_rx,
			0/*!retry_poll*/);
	return (status == VCHIQ_SUCCESS);
}
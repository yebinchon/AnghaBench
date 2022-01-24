#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct adreq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * adh_remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIST_CMD_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC0 (struct adreq*,int /*<<< orphan*/ *) ; 
 struct adreq* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct adreq*,int /*<<< orphan*/ ) ; 
 TYPE_1__* adhost ; 
 int /*<<< orphan*/  adist_free_list ; 
 int /*<<< orphan*/  adist_free_list_lock ; 
 int /*<<< orphan*/  adist_remote_lock ; 
 int /*<<< orphan*/  adist_send_list ; 
 int /*<<< orphan*/  adr_next ; 
 int /*<<< orphan*/  FUNC3 (struct adreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct adreq *adreq;

	FUNC7(&adist_remote_lock);
	if (adhost->adh_remote == NULL) {
		FUNC8(&adist_remote_lock);
		return;
	}
	FUNC8(&adist_remote_lock);

	FUNC4(&adist_free_list_lock);
	adreq = FUNC1(&adist_free_list);
	if (adreq != NULL)
		FUNC2(&adist_free_list, adreq, adr_next);
	FUNC5(&adist_free_list_lock);
	if (adreq == NULL)
		return;

	FUNC3(adreq, ADIST_CMD_KEEPALIVE, NULL, 0);

	FUNC0(adreq, &adist_send_list);

	FUNC6(3, "keepalive_send: Request sent.");
}
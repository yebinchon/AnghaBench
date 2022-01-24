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
struct adreq {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADIST_BUF_SIZE ; 
 unsigned int ADIST_QUEUE_SIZE ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct adreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adist_disk_list ; 
 int /*<<< orphan*/  adist_disk_list_cond ; 
 int /*<<< orphan*/  adist_disk_list_lock ; 
 int /*<<< orphan*/  adist_free_list ; 
 int /*<<< orphan*/  adist_free_list_cond ; 
 int /*<<< orphan*/  adist_free_list_lock ; 
 int /*<<< orphan*/  adist_send_list ; 
 int /*<<< orphan*/  adist_send_list_cond ; 
 int /*<<< orphan*/  adist_send_list_lock ; 
 int /*<<< orphan*/  adr_next ; 
 int /*<<< orphan*/  FUNC2 (struct adreq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adreq* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct adreq *adreq;
	unsigned int ii;

	FUNC0(&adist_free_list);
	FUNC5(&adist_free_list_lock);
	FUNC3(&adist_free_list_cond);
	FUNC0(&adist_disk_list);
	FUNC5(&adist_disk_list_lock);
	FUNC3(&adist_disk_list_cond);
	FUNC0(&adist_send_list);
	FUNC5(&adist_send_list_lock);
	FUNC3(&adist_send_list_cond);

	for (ii = 0; ii < ADIST_QUEUE_SIZE; ii++) {
		adreq = FUNC4(sizeof(*adreq) + ADIST_BUF_SIZE);
		if (adreq == NULL) {
			FUNC6(EX_TEMPFAIL,
			    "Unable to allocate %zu bytes of memory for adreq object.",
			    sizeof(*adreq) + ADIST_BUF_SIZE);
		}
		FUNC2(adreq);
		FUNC1(&adist_free_list, adreq, adr_next);
	}
}
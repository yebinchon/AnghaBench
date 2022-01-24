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
struct adreq {scalar_t__ adr_datasize; scalar_t__ adr_seq; int /*<<< orphan*/  adr_cmd; int /*<<< orphan*/  adr_byteorder; } ;

/* Variables and functions */
 scalar_t__ ADIST_BUF_SIZE ; 
 int /*<<< orphan*/  ADIST_BYTEORDER ; 
 int /*<<< orphan*/  ADIST_CMD_UNDEFINED ; 
 unsigned int ADIST_QUEUE_SIZE ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct adreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adist_free_list ; 
 int /*<<< orphan*/  adist_free_list_cond ; 
 int /*<<< orphan*/  adist_free_list_lock ; 
 int /*<<< orphan*/  adist_recv_list ; 
 int /*<<< orphan*/  adist_recv_list_cond ; 
 int /*<<< orphan*/  adist_recv_list_lock ; 
 int /*<<< orphan*/  adist_remote_cond ; 
 int /*<<< orphan*/  adist_remote_lock ; 
 int /*<<< orphan*/  adist_remote_mtx ; 
 int /*<<< orphan*/  adist_send_list ; 
 int /*<<< orphan*/  adist_send_list_cond ; 
 int /*<<< orphan*/  adist_send_list_lock ; 
 int /*<<< orphan*/  adr_next ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adreq* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct adreq *adreq;
	unsigned int ii;

	FUNC6(&adist_remote_lock);
	FUNC4(&adist_remote_mtx);
	FUNC2(&adist_remote_cond);
	FUNC0(&adist_free_list);
	FUNC4(&adist_free_list_lock);
	FUNC2(&adist_free_list_cond);
	FUNC0(&adist_send_list);
	FUNC4(&adist_send_list_lock);
	FUNC2(&adist_send_list_cond);
	FUNC0(&adist_recv_list);
	FUNC4(&adist_recv_list_lock);
	FUNC2(&adist_recv_list_cond);

	for (ii = 0; ii < ADIST_QUEUE_SIZE; ii++) {
		adreq = FUNC3(sizeof(*adreq) + ADIST_BUF_SIZE);
		if (adreq == NULL) {
			FUNC5(EX_TEMPFAIL,
			    "Unable to allocate %zu bytes of memory for adreq object.",
			    sizeof(*adreq) + ADIST_BUF_SIZE);
		}
		adreq->adr_byteorder = ADIST_BYTEORDER;
		adreq->adr_cmd = ADIST_CMD_UNDEFINED;
		adreq->adr_seq = 0;
		adreq->adr_datasize = 0;
		FUNC1(&adist_free_list, adreq, adr_next);
	}
}
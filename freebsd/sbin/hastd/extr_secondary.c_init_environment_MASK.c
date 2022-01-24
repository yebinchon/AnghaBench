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
struct hio {int /*<<< orphan*/ * hio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 unsigned int HAST_HIO_MAX ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hio*) ; 
 int /*<<< orphan*/  hio_disk_list ; 
 int /*<<< orphan*/  hio_disk_list_cond ; 
 int /*<<< orphan*/  hio_disk_list_lock ; 
 int /*<<< orphan*/  hio_free_list ; 
 int /*<<< orphan*/  hio_free_list_cond ; 
 int /*<<< orphan*/  hio_free_list_lock ; 
 int /*<<< orphan*/  hio_free_list_size ; 
 int /*<<< orphan*/  hio_next ; 
 int /*<<< orphan*/  hio_send_list ; 
 int /*<<< orphan*/  hio_send_list_cond ; 
 int /*<<< orphan*/  hio_send_list_lock ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct hio *hio;
	unsigned int ii;

	/*
	 * Initialize lists, their locks and theirs condition variables.
	 */
	FUNC0(&hio_free_list);
	FUNC5(&hio_free_list_lock);
	FUNC2(&hio_free_list_cond);
	FUNC0(&hio_disk_list);
	FUNC5(&hio_disk_list_lock);
	FUNC2(&hio_disk_list_cond);
	FUNC0(&hio_send_list);
	FUNC5(&hio_send_list_lock);
	FUNC2(&hio_send_list_cond);

	/*
	 * Allocate requests pool and initialize requests.
	 */
	for (ii = 0; ii < HAST_HIO_MAX; ii++) {
		hio = FUNC4(sizeof(*hio));
		if (hio == NULL) {
			FUNC6(EX_TEMPFAIL,
			    "Unable to allocate memory (%zu bytes) for hio request.",
			    sizeof(*hio));
		}
		hio->hio_data = FUNC4(MAXPHYS);
		if (hio->hio_data == NULL) {
			FUNC6(EX_TEMPFAIL,
			    "Unable to allocate memory (%zu bytes) for gctl_data.",
			    (size_t)MAXPHYS);
		}
		FUNC3(hio);
		FUNC1(&hio_free_list, hio, hio_next);
		hio_free_list_size++;
	}
}
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
struct receive_writer_arg {scalar_t__ err; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cv; int /*<<< orphan*/  done; int /*<<< orphan*/  q; } ;
struct receive_record_arg {int payload_size; struct receive_record_arg* payload; int /*<<< orphan*/ * write_buf; int /*<<< orphan*/  eos_marker; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 struct receive_record_arg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct receive_record_arg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct receive_writer_arg*,struct receive_record_arg*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct receive_writer_arg *rwa = arg;
	struct receive_record_arg *rrd;
	for (rrd = FUNC0(&rwa->q); !rrd->eos_marker;
	    rrd = FUNC0(&rwa->q)) {
		/*
		 * If there's an error, the main thread will stop putting things
		 * on the queue, but we need to clear everything in it before we
		 * can exit.
		 */
		if (rwa->err == 0) {
			rwa->err = FUNC6(rwa, rrd);
		} else if (rrd->write_buf != NULL) {
			FUNC2(rrd->write_buf);
			rrd->write_buf = NULL;
			rrd->payload = NULL;
		} else if (rrd->payload != NULL) {
			FUNC3(rrd->payload, rrd->payload_size);
			rrd->payload = NULL;
		}
		FUNC3(rrd, sizeof (*rrd));
	}
	FUNC3(rrd, sizeof (*rrd));
	FUNC4(&rwa->mutex);
	rwa->done = B_TRUE;
	FUNC1(&rwa->cv);
	FUNC5(&rwa->mutex);
	FUNC7();
}
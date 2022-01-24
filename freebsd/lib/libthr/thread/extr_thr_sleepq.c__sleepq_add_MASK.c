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
struct sleepqueue_chain {int sc_enqcnt; int /*<<< orphan*/  sc_queues; } ;
struct sleepqueue {int /*<<< orphan*/  sq_blocked; void* sq_wchan; int /*<<< orphan*/  sq_freeq; } ;
struct pthread {void* wchan; struct sleepqueue* sleepqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sleepqueue*,int /*<<< orphan*/ ) ; 
 struct sleepqueue_chain* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sleepqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pthread*,int /*<<< orphan*/ ) ; 
 int _thr_queuefifo ; 
 struct sleepqueue* FUNC5 (struct sleepqueue_chain*,void*) ; 
 int /*<<< orphan*/  sq_flink ; 
 int /*<<< orphan*/  sq_hash ; 
 int /*<<< orphan*/  wle ; 

void
FUNC6(void *wchan, struct pthread *td)
{
	struct sleepqueue_chain *sc;
	struct sleepqueue *sq;

	sc = FUNC1(wchan);
	sq = FUNC5(sc, wchan);
	if (sq != NULL) {
		FUNC2(&sq->sq_freeq, td->sleepqueue, sq_flink);
	} else {
		sq = td->sleepqueue;
		FUNC0(&sc->sc_queues, sq, sq_hash);
		sq->sq_wchan = wchan;
		/* sq->sq_type = type; */
	}
	td->sleepqueue = NULL;
	td->wchan = wchan;
	if (((++sc->sc_enqcnt << _thr_queuefifo) & 0xff) != 0)
		FUNC3(&sq->sq_blocked, td, wle);
	else
		FUNC4(&sq->sq_blocked, td, wle);
}
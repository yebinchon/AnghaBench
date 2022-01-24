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
struct au_event_ent {int dummy; } ;
typedef  int /*<<< orphan*/  au_event_t ;

/* Variables and functions */
 struct au_event_ent* FUNC0 (struct au_event_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct au_event_ent *
FUNC3(struct au_event_ent *e, au_event_t event_number)
{
	struct au_event_ent *ep;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	ep = FUNC0(e, event_number);
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (ep);
}
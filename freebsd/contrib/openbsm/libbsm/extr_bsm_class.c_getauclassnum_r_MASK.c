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
struct au_class_ent {scalar_t__ ac_class; } ;
typedef  scalar_t__ au_class_t ;

/* Variables and functions */
 struct au_class_ent* FUNC0 (struct au_class_ent*) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct au_class_ent *
FUNC4(struct au_class_ent *c, au_class_t class_number)
{
	struct au_class_ent *cp;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	FUNC3();
	while ((cp = FUNC0(c)) != NULL) {
		if (class_number == cp->ac_class)
			return (cp);
	}
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (NULL);
}
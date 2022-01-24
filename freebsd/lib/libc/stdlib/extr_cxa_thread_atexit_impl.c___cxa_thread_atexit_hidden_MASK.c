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
struct cxa_thread_dtor {void (* func ) (void*) ;void* dso; void* obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cxa_thread_dtor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtors ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  errno ; 
 struct cxa_thread_dtor* FUNC1 (int) ; 

int
FUNC2(void (*dtor_func)(void *), void *obj,
    void *dso_symbol)
{
	struct cxa_thread_dtor *new_dtor;

	new_dtor = FUNC1(sizeof(*new_dtor));
	if (new_dtor == NULL) {
		errno = ENOMEM; /* forcibly override malloc(3) error */
		return (-1);
	}

	new_dtor->obj = obj;
	new_dtor->func = dtor_func;
	new_dtor->dso = dso_symbol;
	FUNC0(&dtors, new_dtor, entry);
	return (0);
}
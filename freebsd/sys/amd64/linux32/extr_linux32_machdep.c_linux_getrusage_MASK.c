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
struct thread {int dummy; } ;
struct rusage {int dummy; } ;
struct linux_getrusage_args {int /*<<< orphan*/ * rusage; int /*<<< orphan*/  who; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,struct rusage*) ; 
 int FUNC1 (struct rusage*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct thread *td, struct linux_getrusage_args *uap)
{
	struct rusage s;
	int error;

	error = FUNC0(td, uap->who, &s);
	if (error != 0)
		return (error);
	if (uap->rusage != NULL)
		error = FUNC1(&s, uap->rusage);
	return (error);
}
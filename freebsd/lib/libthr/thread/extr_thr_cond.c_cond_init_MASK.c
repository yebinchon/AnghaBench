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
struct pthread_cond_attr {scalar_t__ c_pshared; } ;
struct pthread_cond {int dummy; } ;
typedef  struct pthread_cond_attr* pthread_condattr_t ;
typedef  struct pthread_cond* pthread_cond_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 scalar_t__ PTHREAD_PROCESS_PRIVATE ; 
 struct pthread_cond* THR_PSHARED_PTR ; 
 struct pthread_cond* FUNC0 (struct pthread_cond**,int) ; 
 struct pthread_cond* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread_cond*,struct pthread_cond_attr const*) ; 

__attribute__((used)) static int
FUNC3(pthread_cond_t *cond, const pthread_condattr_t *cond_attr)
{
	struct pthread_cond *cvp;
	const struct pthread_cond_attr *cattr;
	int pshared;

	cattr = cond_attr != NULL ? *cond_attr : NULL;
	if (cattr == NULL || cattr->c_pshared == PTHREAD_PROCESS_PRIVATE) {
		pshared = 0;
		cvp = FUNC1(1, sizeof(struct pthread_cond));
		if (cvp == NULL)
			return (ENOMEM);
	} else {
		pshared = 1;
		cvp = FUNC0(cond, 1);
		if (cvp == NULL)
			return (EFAULT);
	}

	/*
	 * Initialise the condition variable structure:
	 */
	FUNC2(cvp, cattr);
	*cond = pshared ? THR_PSHARED_PTR : cvp;
	return (0);
}
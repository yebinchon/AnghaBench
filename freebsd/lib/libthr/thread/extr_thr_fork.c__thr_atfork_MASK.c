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
struct pthread_atfork {void (* prepare ) () ;void (* parent ) () ;void (* child ) () ;} ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pthread_atfork*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  _thr_atfork_list ; 
 int /*<<< orphan*/  _thr_atfork_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct pthread_atfork* FUNC7 (int) ; 
 int /*<<< orphan*/  qe ; 

int
FUNC8(void (*prepare)(void), void (*parent)(void),
    void (*child)(void))
{
	struct pthread *curthread;
	struct pthread_atfork *af;

	FUNC4();

	if ((af = FUNC7(sizeof(struct pthread_atfork))) == NULL)
		return (ENOMEM);

	curthread = FUNC3();
	af->prepare = prepare;
	af->parent = parent;
	af->child = child;
	FUNC1(curthread);
	FUNC6(&_thr_atfork_lock);
	FUNC0(&_thr_atfork_list, af, qe);
	FUNC5(&_thr_atfork_lock);
	FUNC2(curthread);
	return (0);
}
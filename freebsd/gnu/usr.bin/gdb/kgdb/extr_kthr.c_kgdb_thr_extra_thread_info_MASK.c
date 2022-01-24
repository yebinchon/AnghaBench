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
typedef  int /*<<< orphan*/  td_name ;
struct thread {int /*<<< orphan*/ * td_name; } ;
struct proc {int /*<<< orphan*/ * p_comm; } ;
struct kthr {int pid; scalar_t__ kaddr; scalar_t__ paddr; } ;
typedef  int /*<<< orphan*/  comm ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MAXCOMLEN ; 
 struct kthr* FUNC0 (int) ; 
 int /*<<< orphan*/  kvm ; 
 int FUNC1 (int /*<<< orphan*/ ,uintptr_t,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

char *
FUNC5(int tid)
{
	char comm[MAXCOMLEN + 1];
	char td_name[MAXCOMLEN + 1];
	struct kthr *kt;
	struct proc *p;
	struct thread *t;
	static char buf[64];

	kt = FUNC0(tid);
	if (kt == NULL)
		return (NULL);	
	FUNC2(buf, sizeof(buf), "PID=%d", kt->pid);
	p = (struct proc *)kt->paddr;
	if (FUNC1(kvm, (uintptr_t)&p->p_comm[0], &comm, sizeof(comm)) !=
	    sizeof(comm))
		return (buf);
	FUNC4(buf, ": ", sizeof(buf));
	FUNC4(buf, comm, sizeof(buf));
	t = (struct thread *)kt->kaddr;
	if (FUNC1(kvm, (uintptr_t)&t->td_name[0], &td_name,
	    sizeof(td_name)) == sizeof(td_name) &&
	    FUNC3(comm, td_name) != 0) {
		FUNC4(buf, "/", sizeof(buf));
		FUNC4(buf, td_name, sizeof(buf));
	}
	return (buf);
}
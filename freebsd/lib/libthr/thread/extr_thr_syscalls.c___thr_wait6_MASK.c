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
struct pthread {int dummy; } ;
struct __wrusage {int dummy; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  idtype_t ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,struct __wrusage*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

__attribute__((used)) static pid_t
FUNC4(idtype_t idtype, id_t id, int *status, int options,
    struct __wrusage *ru, siginfo_t *infop)
{
	struct pthread *curthread;
	pid_t ret;

	curthread = FUNC1();
	FUNC2(curthread);
	ret = FUNC0(idtype, id, status, options, ru, infop);
	FUNC3(curthread, ret <= 0);
	return (ret);
}
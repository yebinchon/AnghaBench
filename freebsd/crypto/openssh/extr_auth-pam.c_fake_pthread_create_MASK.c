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
struct pam_ctxt {int pam_psock; int pam_csock; } ;
typedef  int /*<<< orphan*/  sp_pthread_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sshpam_oldsig ; 
 int /*<<< orphan*/  sshpam_sigchld_handler ; 
 int sshpam_thread_status ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(sp_pthread_t *thread, const void *attr,
    void *(*thread_start)(void *), void *arg)
{
	pid_t pid;
	struct pam_ctxt *ctx = arg;

	sshpam_thread_status = -1;
	switch ((pid = FUNC3())) {
	case -1:
		FUNC2("fork(): %s", FUNC5(errno));
		return (-1);
	case 0:
		FUNC1(ctx->pam_psock);
		ctx->pam_psock = -1;
		thread_start(arg);
		FUNC0(1);
	default:
		*thread = pid;
		FUNC1(ctx->pam_csock);
		ctx->pam_csock = -1;
		sshpam_oldsig = FUNC4(SIGCHLD, sshpam_sigchld_handler);
		return (0);
	}
}
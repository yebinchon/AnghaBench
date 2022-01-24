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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int SIGBUS ; 
 int SIGINT ; 
 int SIGSEGV ; 
 int SIGTERM ; 
 int SIGUSR2 ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int VGLAbortPending ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC7(int arg)
{
  sigset_t mask;

  VGLAbortPending = 1;
  FUNC5(SIGINT, SIG_IGN);
  FUNC5(SIGTERM, SIG_IGN);
  FUNC5(SIGUSR2, SIG_IGN);
  if (arg == SIGBUS || arg == SIGSEGV) {
    FUNC5(arg, SIG_DFL);
    FUNC4(&mask);
    FUNC3(&mask, arg);
    FUNC6(SIG_UNBLOCK, &mask, NULL);
    FUNC0();
    FUNC2(FUNC1(), arg);
  }
}
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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ g_artefact ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int sig)
{
    FUNC2(sig==SIGINT); (void)sig;
#if !defined(_MSC_VER)
    FUNC5(sig, SIG_IGN);  /* this invocation generates a buggy warning in Visual Studio */
#endif
    if (g_artefact) {
        FUNC2(FUNC1(g_artefact));
        FUNC4(g_artefact);
    }
    FUNC0("\n");
    FUNC3(2);
}
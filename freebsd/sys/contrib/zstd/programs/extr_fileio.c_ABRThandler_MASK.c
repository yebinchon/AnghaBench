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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_STACK_FRAMES ; 
#define  SIGABRT 132 
#define  SIGFPE 131 
#define  SIGILL 130 
#define  SIGINT 129 
#define  SIGSEGV 128 
 int /*<<< orphan*/  SIG_DFL ; 
 int ZSTD_START_SYMBOLLIST_FRAME ; 
 int FUNC1 (void**,int) ; 
 char** FUNC2 (void**,int) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int sig) {
    const char* name;
    void* addrlist[MAX_STACK_FRAMES];
    char** symbollist;
    int addrlen, i;

    switch (sig) {
        case SIGABRT: name = "SIGABRT"; break;
        case SIGFPE: name = "SIGFPE"; break;
        case SIGILL: name = "SIGILL"; break;
        case SIGINT: name = "SIGINT"; break;
        case SIGSEGV: name = "SIGSEGV"; break;
        default: name = "UNKNOWN";
    }

    FUNC0("Caught %s signal, printing stack:\n", name);
    /* Retrieve current stack addresses. */
    addrlen = FUNC1(addrlist, MAX_STACK_FRAMES);
    if (addrlen == 0) {
        FUNC0("\n");
        return;
    }
    /* Create readable strings to each frame. */
    symbollist = FUNC2(addrlist, addrlen);
    /* Print the stack trace, excluding calls handling the signal. */
    for (i = ZSTD_START_SYMBOLLIST_FRAME; i < addrlen; i++) {
        FUNC0("%s\n", symbollist[i]);
    }
    FUNC3(symbollist);
    /* Reset and raise the signal so default handler runs. */
    FUNC5(sig, SIG_DFL);
    FUNC4(sig);
}
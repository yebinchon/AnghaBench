#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
struct TYPE_12__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  pipe; } ;
struct TYPE_11__ {int cb; int nLength; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; int /*<<< orphan*/  hStdError; int /*<<< orphan*/  hStdOutput; int /*<<< orphan*/  bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; int /*<<< orphan*/  hStdInput; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  DETACHED_PROCESS ; 
 int DUPLICATE_CLOSE_SOURCE ; 
 int DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_5__ Err ; 
 int /*<<< orphan*/  FALSE ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ; 
 int /*<<< orphan*/  FUNC5 (int,long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 TYPE_5__ Out ; 
 int /*<<< orphan*/  ReadFromPipe ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC19(
    const char *option)
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    SECURITY_ATTRIBUTES sa;
    DWORD threadID;
    char msg[300];
    BOOL ok;
    HANDLE hProcess, h, pipeThreads[2];
    char cmdline[100];

    hProcess = FUNC6();

    FUNC13(&pi, sizeof(PROCESS_INFORMATION));
    FUNC13(&si, sizeof(STARTUPINFO));
    si.cb = sizeof(STARTUPINFO);
    si.dwFlags   = STARTF_USESTDHANDLES;
    si.hStdInput = INVALID_HANDLE_VALUE;

    FUNC13(&sa, sizeof(SECURITY_ATTRIBUTES));
    sa.nLength = sizeof(SECURITY_ATTRIBUTES);
    sa.lpSecurityDescriptor = NULL;
    sa.bInheritHandle = FALSE;

    /*
     * Create a non-inheritible pipe.
     */

    FUNC1(&Out.pipe, &h, &sa, 0);

    /*
     * Dupe the write side, make it inheritible, and close the original.
     */

    FUNC4(hProcess, h, hProcess, &si.hStdOutput, 0, TRUE,
	    DUPLICATE_SAME_ACCESS | DUPLICATE_CLOSE_SOURCE);

    /*
     * Same as above, but for the error side.
     */

    FUNC1(&Err.pipe, &h, &sa, 0);
    FUNC4(hProcess, h, hProcess, &si.hStdError, 0, TRUE,
	    DUPLICATE_SAME_ACCESS | DUPLICATE_CLOSE_SOURCE);

    /*
     * Base command line.
     */

    FUNC15(cmdline, "cl.exe -nologo -c -TC -Zs -X -Fp.\\_junk.pch ");

    /*
     * Append our option for testing
     */

    FUNC14(cmdline, option);

    /*
     * Filename to compile, which exists, but is nothing and empty.
     */

    FUNC14(cmdline, " .\\nul");

    ok = FUNC2(
	    NULL,	    /* Module name. */
	    cmdline,	    /* Command line. */
	    NULL,	    /* Process handle not inheritable. */
	    NULL,	    /* Thread handle not inheritable. */
	    TRUE,	    /* yes, inherit handles. */
	    DETACHED_PROCESS, /* No console for you. */
	    NULL,	    /* Use parent's environment block. */
	    NULL,	    /* Use parent's starting directory. */
	    &si,	    /* Pointer to STARTUPINFO structure. */
	    &pi);	    /* Pointer to PROCESS_INFORMATION structure. */

    if (!ok) {
	DWORD err = FUNC7();
	int chars = FUNC17(msg, sizeof(msg) - 1,
		"Tried to launch: \"%s\", but got error [%u]: ", cmdline, err);

	FUNC5(FORMAT_MESSAGE_FROM_SYSTEM|FORMAT_MESSAGE_IGNORE_INSERTS|
		FORMAT_MESSAGE_MAX_WIDTH_MASK, 0L, err, 0, (LPVOID)&msg[chars],
		(300-chars), 0);
	FUNC12(FUNC8(STD_ERROR_HANDLE), msg, FUNC16(msg), &err,NULL);
	return 2;
    }

    /*
     * Close our references to the write handles that have now been inherited.
     */

    FUNC0(si.hStdOutput);
    FUNC0(si.hStdError);

    FUNC9(pi.hProcess, 5000);
    FUNC0(pi.hThread);

    /*
     * Start the pipe reader threads.
     */

    pipeThreads[0] = FUNC3(NULL, 0, ReadFromPipe, &Out, 0, &threadID);
    pipeThreads[1] = FUNC3(NULL, 0, ReadFromPipe, &Err, 0, &threadID);

    /*
     * Block waiting for the process to end.
     */

    FUNC11(pi.hProcess, INFINITE);
    FUNC0(pi.hProcess);

    /*
     * Wait for our pipe to get done reading, should it be a little slow.
     */

    FUNC10(2, pipeThreads, TRUE, 500);
    FUNC0(pipeThreads[0]);
    FUNC0(pipeThreads[1]);

    /*
     * Look for the commandline warning code in both streams.
     *  - in MSVC 6 & 7 we get D4002, in MSVC 8 we get D9002.
     */

    return !(FUNC18(Out.buffer, "D4002") != NULL
             || FUNC18(Err.buffer, "D4002") != NULL
             || FUNC18(Out.buffer, "D9002") != NULL
             || FUNC18(Err.buffer, "D9002") != NULL
             || FUNC18(Out.buffer, "D2021") != NULL
             || FUNC18(Err.buffer, "D2021") != NULL);
}
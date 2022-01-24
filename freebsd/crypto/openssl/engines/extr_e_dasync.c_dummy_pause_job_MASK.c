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
typedef  int /*<<< orphan*/  OSSL_ASYNC_FD ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  ASYNC_WAIT_CTX ;
typedef  int /*<<< orphan*/  ASYNC_JOB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char DUMMY_CHAR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  engine_dasync_id ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC14(void) {
    ASYNC_JOB *job;
    ASYNC_WAIT_CTX *waitctx;
    OSSL_ASYNC_FD pipefds[2] = {0, 0};
    OSSL_ASYNC_FD *writefd;
#if defined(ASYNC_WIN)
    DWORD numwritten, numread;
    char buf = DUMMY_CHAR;
#elif defined(ASYNC_POSIX)
    char buf = DUMMY_CHAR;
#endif

    if ((job = FUNC2()) == NULL)
        return;

    waitctx = FUNC3(job);

    if (FUNC0(waitctx, engine_dasync_id, &pipefds[0],
                              (void **)&writefd)) {
        pipefds[1] = *writefd;
    } else {
        writefd = FUNC7(sizeof(*writefd));
        if (writefd == NULL)
            return;
#if defined(ASYNC_WIN)
        if (CreatePipe(&pipefds[0], &pipefds[1], NULL, 256) == 0) {
            OPENSSL_free(writefd);
            return;
        }
#elif defined(ASYNC_POSIX)
        if (pipe(pipefds) != 0) {
            OPENSSL_free(writefd);
            return;
        }
#endif
        *writefd = pipefds[1];

        if (!FUNC1(waitctx, engine_dasync_id, pipefds[0],
                                        writefd, wait_cleanup)) {
            FUNC12(waitctx, engine_dasync_id, pipefds[0], writefd);
            return;
        }
    }
    /*
     * In the Dummy async engine we are cheating. We signal that the job
     * is complete by waking it before the call to ASYNC_pause_job(). A real
     * async engine would only wake when the job was actually complete
     */
#if defined(ASYNC_WIN)
    WriteFile(pipefds[1], &buf, 1, &numwritten, NULL);
#elif defined(ASYNC_POSIX)
    if (write(pipefds[1], &buf, 1) < 0)
        return;
#endif

    /* Ignore errors - we carry on anyway */
    FUNC4();

    /* Clear the wake signal */
#if defined(ASYNC_WIN)
    ReadFile(pipefds[0], &buf, 1, &numread, NULL);
#elif defined(ASYNC_POSIX)
    if (read(pipefds[0], &buf, 1) < 0)
        return;
#endif
}
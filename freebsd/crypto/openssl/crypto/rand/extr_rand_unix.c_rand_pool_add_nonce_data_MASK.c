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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  RAND_POOL ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 

int FUNC4(RAND_POOL *pool)
{
    struct {
        pid_t pid;
        CRYPTO_THREAD_ID tid;
        uint64_t time;
    } data = { 0 };

    /*
     * Add process id, thread id, and a high resolution timestamp to
     * ensure that the nonce is unique with high probability for
     * different process instances.
     */
    data.pid = FUNC2();
    data.tid = FUNC0();
    data.time = FUNC1();

    return FUNC3(pool, (unsigned char *)&data, sizeof(data), 0);
}
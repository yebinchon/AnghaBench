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
typedef  int /*<<< orphan*/  CRYPTO_THREAD_ID ;

/* Variables and functions */
 int CRYPTO_MEM_CHECK_ENABLE ; 
 int CRYPTO_MEM_CHECK_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disabling_threadid ; 
 int /*<<< orphan*/  do_memdbg_init ; 
 int /*<<< orphan*/  memdbg_init ; 
 int /*<<< orphan*/  memdbg_lock ; 
 int mh_mode ; 

__attribute__((used)) static int FUNC5(void)
{
    int ret = 0;
    CRYPTO_THREAD_ID cur;

    if (mh_mode & CRYPTO_MEM_CHECK_ON) {
        if (!FUNC4(&memdbg_init, do_memdbg_init))
            return 0;

        cur = FUNC1();
        FUNC2(memdbg_lock);

        ret = (mh_mode & CRYPTO_MEM_CHECK_ENABLE)
            || !FUNC0(disabling_threadid, cur);

        FUNC3(memdbg_lock);
    }
    return ret;
}
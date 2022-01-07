
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_THREAD_ID ;


 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_MEM_CHECK_ON ;
 int CRYPTO_THREAD_compare_id (int ,int ) ;
 int CRYPTO_THREAD_get_current_id () ;
 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int RUN_ONCE (int *,int ) ;
 int disabling_threadid ;
 int do_memdbg_init ;
 int memdbg_init ;
 int memdbg_lock ;
 int mh_mode ;

__attribute__((used)) static int mem_check_on(void)
{
    int ret = 0;
    CRYPTO_THREAD_ID cur;

    if (mh_mode & CRYPTO_MEM_CHECK_ON) {
        if (!RUN_ONCE(&memdbg_init, do_memdbg_init))
            return 0;

        cur = CRYPTO_THREAD_get_current_id();
        CRYPTO_THREAD_read_lock(memdbg_lock);

        ret = (mh_mode & CRYPTO_MEM_CHECK_ENABLE)
            || !CRYPTO_THREAD_compare_id(disabling_threadid, cur);

        CRYPTO_THREAD_unlock(memdbg_lock);
    }
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_mem_ctrl (int ) ;
 scalar_t__ mem_check_on () ;
 int pop_info () ;

int CRYPTO_mem_debug_pop(void)
{
    int ret = 0;

    if (mem_check_on()) {
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);
        ret = pop_info();
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
    }
    return ret;
}

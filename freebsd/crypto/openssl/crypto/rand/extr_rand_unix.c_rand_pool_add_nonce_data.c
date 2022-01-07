
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pid_t ;
typedef int data ;
typedef int RAND_POOL ;
typedef int CRYPTO_THREAD_ID ;


 int CRYPTO_THREAD_get_current_id () ;
 int get_time_stamp () ;
 int getpid () ;
 int rand_pool_add (int *,unsigned char*,int,int ) ;

int rand_pool_add_nonce_data(RAND_POOL *pool)
{
    struct {
        pid_t pid;
        CRYPTO_THREAD_ID tid;
        uint64_t time;
    } data = { 0 };






    data.pid = getpid();
    data.tid = CRYPTO_THREAD_get_current_id();
    data.time = get_time_stamp();

    return rand_pool_add(pool, (unsigned char *)&data, sizeof(data), 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int RAND_POOL ;



 scalar_t__ EINTR ;
 size_t OSSL_NELEM (int ) ;
 int RAND_query_egd_bytes (char const*,unsigned char*,int) ;
 int close_random_device (size_t) ;
 scalar_t__ errno ;
 int get_random_device (size_t) ;
 int keep_random_devices_open ;
 size_t rand_acquire_entropy_from_cpu (int *) ;
 size_t rand_acquire_entropy_from_tsc (int *) ;
 unsigned char* rand_pool_add_begin (int *,size_t) ;
 int rand_pool_add_end (int *,size_t,int) ;
 size_t rand_pool_bytes_needed (int *,int) ;
 size_t rand_pool_entropy_available (int *) ;
 int random_device_paths ;
 int read (int const,unsigned char*,size_t) ;
 int syscall_random (unsigned char*,size_t) ;
 scalar_t__ wait_random_seeded () ;

size_t rand_pool_acquire_entropy(RAND_POOL *pool)
{



    size_t entropy_available;
    return rand_pool_entropy_available(pool);

}

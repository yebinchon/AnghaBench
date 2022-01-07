
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {int random_data_source_fd; scalar_t__ getrandom_available; scalar_t__ pid; scalar_t__ initialized; } ;


 scalar_t__ close (int) ;
 TYPE_1__ global ;
 int sodium_memzero (int *,int) ;
 int stream ;

__attribute__((used)) static int
randombytes_salsa20_random_close(void)
{
    int ret = -1;

    if (global.random_data_source_fd != -1 &&
        close(global.random_data_source_fd) == 0) {
        global.random_data_source_fd = -1;
        global.initialized = 0;



        ret = 0;
    }
    sodium_memzero(&stream, sizeof stream);

    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int CANARY_SIZE ;
 int GetSystemInfo (TYPE_1__*) ;
 int _SC_PAGESIZE ;
 int canary ;
 int page_size ;
 int randombytes_buf (int ,int) ;
 int sodium_misuse () ;
 long sysconf (int ) ;

int
_sodium_alloc_init(void)
{
    randombytes_buf(canary, sizeof canary);

    return 0;
}

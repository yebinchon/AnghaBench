
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* buf ) (void* const,size_t const) ;} ;


 TYPE_1__* implementation ;
 int randombytes_init_if_needed () ;
 scalar_t__ randombytes_random () ;
 int stub1 (void* const,size_t const) ;

void
randombytes_buf(void * const buf, const size_t size)
{

    randombytes_init_if_needed();
    if (size > (size_t) 0U) {
        implementation->buf(buf, size);
    }
}

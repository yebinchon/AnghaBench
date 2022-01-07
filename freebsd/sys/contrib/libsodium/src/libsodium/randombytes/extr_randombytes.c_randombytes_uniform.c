
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* uniform ) (int const) ;} ;


 TYPE_1__* implementation ;
 int randombytes_init_if_needed () ;
 int randombytes_random () ;
 int stub1 (int const) ;

uint32_t
randombytes_uniform(const uint32_t upper_bound)
{
    uint32_t min;
    uint32_t r;


    randombytes_init_if_needed();
    if (implementation->uniform != ((void*)0)) {
        return implementation->uniform(upper_bound);
    }

    if (upper_bound < 2) {
        return 0;
    }
    min = (1U + ~upper_bound) % upper_bound;
    do {
        r = randombytes_random();
    } while (r < min);



    return r % upper_bound;
}

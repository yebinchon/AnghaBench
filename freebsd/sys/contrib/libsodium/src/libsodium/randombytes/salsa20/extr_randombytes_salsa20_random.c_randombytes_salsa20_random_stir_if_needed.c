
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {scalar_t__ initialized; } ;


 scalar_t__ getpid () ;
 TYPE_2__ global ;
 int randombytes_salsa20_random_stir () ;
 int sodium_misuse () ;
 TYPE_1__ stream ;

__attribute__((used)) static void
randombytes_salsa20_random_stir_if_needed(void)
{







    if (stream.initialized == 0) {
        randombytes_salsa20_random_stir();
    }

}

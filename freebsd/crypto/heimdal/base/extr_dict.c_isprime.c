
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
isprime(size_t p)
{
    size_t q, i;

    for(i = 2 ; i < p; i++) {
 q = p / i;

 if (i * q == p)
     return 0;
 if (i * i > p)
     return 1;
    }
    return 1;
}

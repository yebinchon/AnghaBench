
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isprime (size_t) ;

__attribute__((used)) static size_t
findprime(size_t p)
{
    if (p % 2 == 0)
 p++;

    while (isprime(p) == 0)
 p += 2;

    return p;
}

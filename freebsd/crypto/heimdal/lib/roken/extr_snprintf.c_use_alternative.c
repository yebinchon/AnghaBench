
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_longest ;


 int alternate_flag ;

__attribute__((used)) static int
use_alternative (int flags, u_longest num, unsigned base)
{
    return (flags & alternate_flag) && base == 16 && num != 0;
}

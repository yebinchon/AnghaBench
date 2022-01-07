
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
der_copy_unsigned (const unsigned *from, unsigned *to)
{
    *to = *from;
    return 0;
}

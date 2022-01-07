
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
der_copy_integer (const int *from, int *to)
{
    *to = *from;
    return 0;
}

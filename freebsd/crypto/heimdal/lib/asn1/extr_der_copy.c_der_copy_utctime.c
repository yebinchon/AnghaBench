
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;



int
der_copy_utctime (const time_t *from, time_t *to)
{
    *to = *from;
    return 0;
}

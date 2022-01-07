
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_raw ;

void
output_raw_restore(void *xorig)
{
    int *orig;

    orig = xorig;
    output_raw = *orig;
}

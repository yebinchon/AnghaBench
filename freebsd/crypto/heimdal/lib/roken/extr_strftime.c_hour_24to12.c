
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
hour_24to12 (int hour)
{
    int ret = hour % 12;

    if (ret == 0)
 ret = 12;
    return ret;
}

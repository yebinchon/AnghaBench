
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lsetpag () ;

int
aix_setpag(void)
{
    return lsetpag();
}

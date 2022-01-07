
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ zvol_minors ;

int
zvol_busy(void)
{
 return (zvol_minors != 0);
}

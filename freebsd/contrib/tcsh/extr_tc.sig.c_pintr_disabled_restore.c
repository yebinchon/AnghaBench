
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pintr_disabled ;

void
pintr_disabled_restore(void *xold)
{
    int *old;

    old = xold;
    pintr_disabled = *old;
}

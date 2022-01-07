
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_DRAIN_WRITEBUF ;
 int sysarch (int ,int *) ;

int
arm_drain_writebuf(void)
{
 sysarch(ARM_DRAIN_WRITEBUF, ((void*)0));
 return (0);
}

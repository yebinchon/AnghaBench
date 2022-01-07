
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ exiting5 ;
 int usleep (int) ;

__attribute__((used)) static void *
busyFunction5(void *arg)
{

 while (exiting5 == 0)
  usleep(50000);

 return ((void*)0);
}

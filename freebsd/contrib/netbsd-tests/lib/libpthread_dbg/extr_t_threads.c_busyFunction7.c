
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ exiting7 ;
 int usleep (int) ;

__attribute__((used)) static void *
busyFunction7(void *arg)
{

 while (exiting7 == 0)
  usleep(50000);

 return ((void*)0);
}

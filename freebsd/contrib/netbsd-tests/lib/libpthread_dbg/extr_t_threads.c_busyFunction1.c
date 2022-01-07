
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ exiting1 ;
 int usleep (int) ;

__attribute__((used)) static void *
busyFunction1(void *arg)
{

 while (exiting1 == 0)
  usleep(50000);

 return ((void*)0);
}

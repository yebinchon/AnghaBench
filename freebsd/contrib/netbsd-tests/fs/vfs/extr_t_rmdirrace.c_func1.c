
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRNAME ;
 int rump_sys_mkdir (int ,int) ;

__attribute__((used)) static void *func1(void *arg)
{

 while (*(int *)arg != 1)
  rump_sys_mkdir(DIRNAME, 0755);

 return ((void*)0);
}

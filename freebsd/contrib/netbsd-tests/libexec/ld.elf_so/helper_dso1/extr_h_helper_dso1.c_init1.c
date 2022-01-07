
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlopen_cookie ;
 int poll (int *,int ,int) ;
 int sleep_init ;

__attribute__((used)) static void __attribute__((__constructor__))
init1(void)
{
 dlopen_cookie = 1;
 if (!sleep_init)
  return;
 for (;;)
  poll(((void*)0), 0, -1);
}

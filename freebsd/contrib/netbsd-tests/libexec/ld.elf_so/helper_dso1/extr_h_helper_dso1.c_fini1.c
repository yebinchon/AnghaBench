
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlclose_cookie ;
 int poll (int *,int ,int) ;
 int sleep_fini ;

__attribute__((used)) static void __attribute__((__destructor__))
fini1(void)
{
 dlclose_cookie = 1;
 if (!sleep_fini)
  return;
 for (;;)
  poll(((void*)0), 0, -1);
}

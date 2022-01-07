
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int SUCCESS () ;
 scalar_t__ exiting_state ;

__attribute__((used)) static void
normal_handler_0(void)
{
 static int normal_handler_0_called;

 ASSERT(normal_handler_0_called == 0);
 ASSERT(exiting_state == 0);

 normal_handler_0_called = 1;
 SUCCESS();
}

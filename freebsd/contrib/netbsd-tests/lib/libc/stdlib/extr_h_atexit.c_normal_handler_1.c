
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int SUCCESS () ;
 int exiting_state ;

__attribute__((used)) static void
normal_handler_1(void)
{
 static int normal_handler_1_called;

 ASSERT(normal_handler_1_called == 0);
 ASSERT(exiting_state == 1);

 exiting_state--;
 normal_handler_1_called = 1;
 SUCCESS();
}

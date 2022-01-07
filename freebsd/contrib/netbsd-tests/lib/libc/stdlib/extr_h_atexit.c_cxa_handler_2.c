
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int SUCCESS () ;
 int arg_3 ;
 int exiting_state ;

__attribute__((used)) static void
cxa_handler_2(void *arg)
{
 static int cxa_handler_2_called;

 ASSERT(arg == (void *)&arg_3);
 ASSERT(cxa_handler_2_called == 0);
 ASSERT(exiting_state == 2);

 exiting_state--;
 cxa_handler_2_called = 1;
 SUCCESS();
}

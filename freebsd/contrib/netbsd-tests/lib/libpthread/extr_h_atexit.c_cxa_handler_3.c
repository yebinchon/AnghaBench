
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int SUCCESS () ;
 int arg_2 ;
 int exiting_state ;

__attribute__((used)) static void
cxa_handler_3(void *arg)
{
 static int cxa_handler_3_called;

 ASSERT(arg == (void *)&arg_2);
 ASSERT(cxa_handler_3_called == 0);
 ASSERT(exiting_state == 3);

 exiting_state--;
 cxa_handler_3_called = 1;
 SUCCESS();
}

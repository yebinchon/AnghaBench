
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ __cxa_atexit (int ,int *,int *************************) ;
 int __cxa_finalize (int *************************) ;
 int arg_1 ;
 int arg_2 ;
 int arg_3 ;
 scalar_t__ atexit (int ) ;
 int cxa_handler_2 ;
 int cxa_handler_3 ;
 int cxa_handler_4 ;
 int cxa_handler_5 ;
 int ************************ dso_handle_1 ;
 int ************************ dso_handle_2 ;
 int ************************ dso_handle_3 ;
 int exit (int ) ;
 int exiting_state ;
 int normal_handler_0 ;
 int normal_handler_1 ;

int
main(int argc, char *argv[])
{

 exiting_state = 5;

 ASSERT(0 == atexit(normal_handler_0));
 ASSERT(0 == atexit(normal_handler_1));
 ASSERT(0 == __cxa_atexit(cxa_handler_4, &arg_1, &dso_handle_1));
 ASSERT(0 == __cxa_atexit(cxa_handler_5, &arg_1, &dso_handle_1));
 ASSERT(0 == __cxa_atexit(cxa_handler_3, &arg_2, &dso_handle_2));
 ASSERT(0 == __cxa_atexit(cxa_handler_2, &arg_3, &dso_handle_3));

 __cxa_finalize(&dso_handle_1);
 __cxa_finalize(&dso_handle_2);

 exit(0);
}

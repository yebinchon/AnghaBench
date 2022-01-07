
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 scalar_t__ run_fini_array_test ;

__attribute__((used)) static void
fini_array_handler(void)
{

 if (run_fini_array_test)
  _exit(1);
}

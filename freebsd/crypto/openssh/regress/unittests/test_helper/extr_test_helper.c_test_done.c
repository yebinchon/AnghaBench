
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * active_test_name ;
 int assert (int ) ;
 int fflush (int ) ;
 int free (int *) ;
 int printf (char*) ;
 int quiet_mode ;
 int stdout ;
 char* subtest_info ;
 scalar_t__ verbose_mode ;

void
test_done(void)
{
 *subtest_info = '\0';
 assert(active_test_name != ((void*)0));
 free(active_test_name);
 active_test_name = ((void*)0);
 if (verbose_mode)
  printf("OK\n");
 else if (!quiet_mode) {
  printf(".");
  fflush(stdout);
 }
}

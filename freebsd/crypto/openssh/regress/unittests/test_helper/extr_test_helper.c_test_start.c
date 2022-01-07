
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINFO ;
 char* active_test_name ;
 int assert (int ) ;
 int printf (char*,int,char*) ;
 int siginfo ;
 int signal (int ,int ) ;
 char* strdup (char const*) ;
 char* subtest_info ;
 int test_number ;
 scalar_t__ verbose_mode ;

void
test_start(const char *n)
{
 assert(active_test_name == ((void*)0));
 assert((active_test_name = strdup(n)) != ((void*)0));
 *subtest_info = '\0';
 if (verbose_mode)
  printf("test %u - \"%s\": ", test_number, active_test_name);
 test_number++;



}

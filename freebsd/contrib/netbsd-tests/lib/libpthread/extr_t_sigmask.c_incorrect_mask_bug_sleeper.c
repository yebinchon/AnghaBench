
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*) ;
 int sleep (int) ;

__attribute__((used)) static void *
incorrect_mask_bug_sleeper(void* arg)
{
 int i;
 for (i = 0; i < 10; i++)
  sleep(1);

 atf_tc_fail("sleeper");
}

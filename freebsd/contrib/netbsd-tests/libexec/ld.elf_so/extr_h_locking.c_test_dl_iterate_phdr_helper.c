
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int sleep (int) ;

__attribute__((used)) static void *
test_dl_iterate_phdr_helper(void *dummy)
{
 sleep(10);
 _exit(1);
}

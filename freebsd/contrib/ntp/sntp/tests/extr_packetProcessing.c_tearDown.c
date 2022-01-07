
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 scalar_t__ key_cnt ;
 int * key_ptr ;
 scalar_t__ restoreKeyDb ;
 int sntptest_destroy () ;

void
tearDown(void)
{
 if (restoreKeyDb) {
  key_cnt = 0;
  free(key_ptr);
  key_ptr = ((void*)0);
 }

 sntptest_destroy();
}

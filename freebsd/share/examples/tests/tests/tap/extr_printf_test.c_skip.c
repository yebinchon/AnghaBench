
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int test_num ;

__attribute__((used)) static void
skip(int skip_num)
{
 int i;

 for (i = 0; i < skip_num; i++) {
  printf("not ok %d # SKIP\n", test_num);
  test_num++;
 }
}

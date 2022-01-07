
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* TestFile; } ;


 int RUN_TEST (int ,int) ;
 TYPE_1__ Unity ;
 int UnityBegin () ;
 int UnityEnd () ;
 int test_custom ;
 int test_custom25 ;
 int test_main ;

int main(void)
{
  Unity.TestFile = "../ut-2803.c";
  UnityBegin();
  RUN_TEST(test_main, 29);
  RUN_TEST(test_custom, 34);
  RUN_TEST(test_custom25, 43);

  return (UnityEnd());
}

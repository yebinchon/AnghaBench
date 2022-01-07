
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int *) ;
 int MSG_INFO ;
 int * omac1_test_vectors ;
 scalar_t__ test_omac1_vector (int *,unsigned int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int test_omac1(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(omac1_test_vectors); i++) {
  if (test_omac1_vector(&omac1_test_vectors[i], i))
   return 1;
 }

 wpa_printf(MSG_INFO, "OMAC1-AES-128 test cases passed");

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_id; int key_len; int typen; int key_seq; int * next; } ;


 char* CMAC ;
 int CMAC_LENGTH ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_MEMORY (char const*,char*,int) ;
 int TEST_IGNORE_MESSAGE (char*) ;
 int make_mac (char const*,int const,int,struct key*,char*) ;
 int memcpy (int *,char*,int) ;
 int strlen (char const*) ;

void
test_MakeCMac(void)
{
 TEST_IGNORE_MESSAGE("OpenSSL not found, skipping...");


}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_len; int typen; int typei; int key_seq; scalar_t__ key_id; int * next; } ;


 int SHA1_LENGTH ;
 int TEST_ASSERT_TRUE (int ) ;
 int TEST_IGNORE_MESSAGE (char*) ;
 int auth_md5 (char const*,int const,int ,struct key*) ;
 int keytype_from_text (int ,int *) ;
 int memcpy (int *,char*,int) ;
 int strlcpy (int ,char*,int) ;

void
test_VerifySHA1(void)
{
 TEST_IGNORE_MESSAGE("OpenSSL not found, skipping...");


}

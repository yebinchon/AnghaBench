
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_id; int key_len; int typen; int typei; int key_seq; int * next; } ;


 int MD5_LENGTH ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_TRUE (int) ;
 int keytype_from_text (int ,int *) ;
 int make_mac (char const*,int const,int,struct key*,char*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (int *,char*,int) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char const*) ;

void
test_MakeMd5Mac(void)
{
 const char* PKT_DATA = "abcdefgh0123";
 const int PKT_LEN = strlen(PKT_DATA);
 const char* EXPECTED_DIGEST =
  "\x52\x6c\xb8\x38\xaf\x06\x5a\xfb\x6c\x98\xbb\xc0\x9b\x0a\x7a\x1b";
 char actual[MD5_LENGTH];

 struct key md5;
 md5.next = ((void*)0);
 md5.key_id = 10;
 md5.key_len = 6;
 memcpy(&md5.key_seq, "md5seq", md5.key_len);
 strlcpy(md5.typen, "MD5", sizeof(md5.typen));
 md5.typei = keytype_from_text(md5.typen, ((void*)0));

 TEST_ASSERT_EQUAL(MD5_LENGTH,
     make_mac(PKT_DATA, PKT_LEN, MD5_LENGTH, &md5, actual));

 TEST_ASSERT_TRUE(memcmp(EXPECTED_DIGEST, actual, MD5_LENGTH) == 0);
}

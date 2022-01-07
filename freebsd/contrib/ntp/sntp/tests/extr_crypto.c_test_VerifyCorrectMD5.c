
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_len; int typen; int typei; int key_seq; scalar_t__ key_id; int * next; } ;


 int MD5_LENGTH ;
 int TEST_ASSERT_TRUE (int ) ;
 int auth_md5 (char const*,int const,int ,struct key*) ;
 int keytype_from_text (int ,int *) ;
 int memcpy (int *,char*,int) ;
 int strlcpy (int ,char*,int) ;

void
test_VerifyCorrectMD5(void)
{
 const char* PKT_DATA =
     "sometestdata"
     "\0\0\0\0"
     "\xc7\x58\x99\xdd\x99\x32\x0f\x71"
     "\x2b\x7b\xfe\x4f\xa2\x32\xcf\xac";
 const int PKT_LEN = 12;

 struct key md5;
 md5.next = ((void*)0);
 md5.key_id = 0;
 md5.key_len = 6;
 memcpy(&md5.key_seq, "md5key", md5.key_len);
 strlcpy(md5.typen, "MD5", sizeof(md5.typen));
 md5.typei = keytype_from_text(md5.typen, ((void*)0));

 TEST_ASSERT_TRUE(auth_md5(PKT_DATA, PKT_LEN, MD5_LENGTH, &md5));
}

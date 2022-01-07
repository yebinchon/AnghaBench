
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_id; int key_len; int typen; int typei; int key_seq; int * next; } ;


 int MD5_LENGTH ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int keytype_from_text (int ,int *) ;
 int make_mac (char const*,int const,int,struct key*,char*) ;
 int memcpy (int *,char*,int) ;
 int strlcpy (int ,char*,int) ;

void
test_PacketSizeNotMultipleOfFourBytes(void)
{
 const char* PKT_DATA = "123456";
 const int PKT_LEN = 6;
 char actual[MD5_LENGTH];

 struct key md5;
 md5.next = ((void*)0);
 md5.key_id = 10;
 md5.key_len = 6;
 memcpy(&md5.key_seq, "md5seq", md5.key_len);
 strlcpy(md5.typen, "MD5", sizeof(md5.typen));
 md5.typei = keytype_from_text(md5.typen, ((void*)0));

 TEST_ASSERT_EQUAL(0, make_mac(PKT_DATA, PKT_LEN, MD5_LENGTH, &md5, actual));
}

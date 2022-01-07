
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int typen; scalar_t__ key_len; int key_seq; scalar_t__ key_id; int * next; } ;


 char* CMAC ;
 scalar_t__ CMAC_LENGTH ;
 int VerifyLocalCMAC (struct key*) ;
 int VerifyOpenSSLCMAC (struct key*) ;
 int memcpy (int *,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
test_VerifyCMAC(void)
{
 const char* PKT_DATA =
     "sometestdata"
     "\0\0\0\0"
     "\x4e\x0c\xf0\xe2\xc7\x8e\xbb\xbf"
     "\x79\xfc\x87\xc7\x8b\xb7\x4a\x0b";
 const int PKT_LEN = 12;
 struct key cmac;

 cmac.next = ((void*)0);
 cmac.key_id = 0;
 cmac.key_len = CMAC_LENGTH;
 memcpy(&cmac.key_seq, "aes-128-cmac-key", cmac.key_len);
 memcpy(&cmac.typen, CMAC, strlen(CMAC) + 1);

 VerifyOpenSSLCMAC(&cmac);
 VerifyLocalCMAC(&cmac);
}

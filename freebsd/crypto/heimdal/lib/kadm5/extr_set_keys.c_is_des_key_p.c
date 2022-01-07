
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETYPE_DES_CBC_CRC ;
 int ETYPE_DES_CBC_MD4 ;
 int ETYPE_DES_CBC_MD5 ;

__attribute__((used)) static int
is_des_key_p(int keytype)
{
    return keytype == ETYPE_DES_CBC_CRC ||
     keytype == ETYPE_DES_CBC_MD4 ||
 keytype == ETYPE_DES_CBC_MD5;
}

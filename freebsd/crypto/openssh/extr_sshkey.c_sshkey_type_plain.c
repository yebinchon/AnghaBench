
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_DSA ;

 int KEY_ECDSA ;

 int KEY_ED25519 ;

 int KEY_RSA ;

 int KEY_XMSS ;


int
sshkey_type_plain(int type)
{
 switch (type) {
 case 129:
  return KEY_RSA;
 case 132:
  return KEY_DSA;
 case 131:
  return KEY_ECDSA;
 case 130:
  return KEY_ED25519;
 case 128:
  return KEY_XMSS;
 default:
  return type;
 }
}

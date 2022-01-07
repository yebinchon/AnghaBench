
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyLen; int keyMaterial; int ek; int rk; int Nr; scalar_t__ direction; } ;
typedef TYPE_1__ keyInstance ;
typedef scalar_t__ BYTE ;


 int BAD_KEY_DIR ;
 int BAD_KEY_INSTANCE ;
 int BAD_KEY_MAT ;
 scalar_t__ DIR_DECRYPT ;
 scalar_t__ DIR_ENCRYPT ;
 int TRUE ;
 int memcpy (int ,char const*,int) ;
 int rijndaelKeySetupDec (int ,int ,int) ;
 int rijndaelKeySetupEnc (int ,int ,int) ;

int rijndael_makeKey(keyInstance *key, BYTE direction, int keyLen,
 const char *keyMaterial) {

 if (key == ((void*)0)) {
  return BAD_KEY_INSTANCE;
 }

 if ((direction == DIR_ENCRYPT) || (direction == DIR_DECRYPT)) {
  key->direction = direction;
 } else {
  return BAD_KEY_DIR;
 }

 if ((keyLen == 128) || (keyLen == 192) || (keyLen == 256)) {
  key->keyLen = keyLen;
 } else {
  return BAD_KEY_MAT;
 }

 if (keyMaterial != ((void*)0)) {
  memcpy(key->keyMaterial, keyMaterial, keyLen/8);
 }


 if (direction == DIR_ENCRYPT) {
  key->Nr = rijndaelKeySetupEnc(key->rk, key->keyMaterial, keyLen);
 } else {
  key->Nr = rijndaelKeySetupDec(key->rk, key->keyMaterial, keyLen);
 }
 rijndaelKeySetupEnc(key->ek, key->keyMaterial, keyLen);
 return TRUE;
}

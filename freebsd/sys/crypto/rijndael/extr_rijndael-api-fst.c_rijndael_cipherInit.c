
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IV; scalar_t__ mode; } ;
typedef TYPE_1__ cipherInstance ;
typedef scalar_t__ BYTE ;


 int BAD_CIPHER_MODE ;
 scalar_t__ MODE_CBC ;
 scalar_t__ MODE_CFB1 ;
 scalar_t__ MODE_ECB ;
 int RIJNDAEL_MAX_IV_SIZE ;
 int TRUE ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int ) ;

int rijndael_cipherInit(cipherInstance *cipher, BYTE mode, char *IV) {
 if ((mode == MODE_ECB) || (mode == MODE_CBC) || (mode == MODE_CFB1)) {
  cipher->mode = mode;
 } else {
  return BAD_CIPHER_MODE;
 }
 if (IV != ((void*)0)) {
  memcpy(cipher->IV, IV, RIJNDAEL_MAX_IV_SIZE);
 } else {
  memset(cipher->IV, 0, RIJNDAEL_MAX_IV_SIZE);
 }
 return TRUE;
}

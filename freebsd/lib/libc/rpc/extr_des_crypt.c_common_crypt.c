
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desparams {int des_key; int des_dir; } ;


 int COPY8 (char*,int ) ;
 int DECRYPT ;
 int DESERR_BADPARAM ;
 int DESERR_HWERROR ;
 int DESERR_NOHWDEVICE ;
 int DESERR_NONE ;
 unsigned int DES_DEVMASK ;
 unsigned int DES_DIRMASK ;
 unsigned int DES_ENCRYPT ;
 unsigned int DES_MAXDATA ;
 int DES_SW ;
 int ENCRYPT ;
 int __des_crypt_LOCAL (char*,unsigned int,struct desparams*) ;
 int _des_crypt_call (char*,unsigned int,struct desparams*) ;

__attribute__((used)) static int
common_crypt(char *key, char *buf, unsigned len, unsigned mode,
    struct desparams *desp)
{
 int desdev;

 if ((len % 8) != 0 || len > DES_MAXDATA) {
  return(DESERR_BADPARAM);
 }
 desp->des_dir =
  ((mode & DES_DIRMASK) == DES_ENCRYPT) ? ENCRYPT : DECRYPT;

 desdev = mode & DES_DEVMASK;
 COPY8(key, desp->des_key);



 if (__des_crypt_LOCAL != ((void*)0)) {
  if (!__des_crypt_LOCAL(buf, len, desp)) {
   return (DESERR_HWERROR);
  }
 } else {
  if (!_des_crypt_call(buf, len, desp)) {
   return (DESERR_HWERROR);
  }
 }
 return(desdev == DES_SW ? DESERR_NONE : DESERR_NOHWDEVICE);
}

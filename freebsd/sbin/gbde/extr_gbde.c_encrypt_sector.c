
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyInstance ;
typedef int cipherInstance ;


 int DIR_ENCRYPT ;
 int MODE_CBC ;
 int errx (int,char*,int) ;
 int rijndael_blockEncrypt (int *,int *,void*,int,void*) ;
 int rijndael_cipherInit (int *,int ,int *) ;
 int rijndael_makeKey (int *,int ,int,void*) ;

__attribute__((used)) static void
encrypt_sector(void *d, int len, int klen, void *key)
{
 keyInstance ki;
 cipherInstance ci;
 int error;

 error = rijndael_cipherInit(&ci, MODE_CBC, ((void*)0));
 if (error <= 0)
  errx(1, "rijndael_cipherInit=%d", error);
 error = rijndael_makeKey(&ki, DIR_ENCRYPT, klen, key);
 if (error <= 0)
  errx(1, "rijndael_makeKeY=%d", error);
 error = rijndael_blockEncrypt(&ci, &ki, d, len * 8, d);
 if (error <= 0)
  errx(1, "rijndael_blockEncrypt=%d", error);
}

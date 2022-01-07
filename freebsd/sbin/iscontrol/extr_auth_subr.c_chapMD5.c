
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,char*,int) ;
 int debug_called (int) ;
 int free (char*) ;
 int str2bin (char*,char**) ;

__attribute__((used)) static int
chapMD5(char id, char *cp, char *chapSecret, unsigned char *digest)
{
     MD5_CTX ctx;
     char *tmp;
     int len;

     debug_called(3);

     MD5Init(&ctx);

     MD5Update(&ctx, &id, 1);

     if((len = str2bin(chapSecret, &tmp)) == 0) {

   return -1;
     }
     MD5Update(&ctx, tmp, len);
     free(tmp);

     if((len = str2bin(cp, &tmp)) == 0) {

   return -1;
     }
     MD5Update(&ctx, tmp, len);
     free(tmp);

     MD5Final(digest, &ctx);


     return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA1_CTX ;


 int SHA1_Final (unsigned char*,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,char*,int) ;
 int debug_called (int) ;
 int free (char*) ;
 int str2bin (char*,char**) ;

__attribute__((used)) static int
chapSHA1(char id, char *cp, char *chapSecret, unsigned char *digest)
{
     SHA1_CTX ctx;
     char *tmp;
     int len;

     debug_called(3);

     SHA1_Init(&ctx);

     SHA1_Update(&ctx, &id, 1);

     if((len = str2bin(chapSecret, &tmp)) == 0) {

   return -1;
     }
     SHA1_Update(&ctx, tmp, len);
     free(tmp);

     if((len = str2bin(cp, &tmp)) == 0) {

   return -1;
     }
     SHA1_Update(&ctx, tmp, len);
     free(tmp);

     SHA1_Final(digest, &ctx);

     return 0;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int final ;
typedef int MD5_CTX ;


 int MD5Final (int*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int const*,int) ;
 int MD5_SIZE ;
 int _crypt_to64 (char*,unsigned long,int) ;
 int memset (int*,int ,int) ;
 char* stpcpy (char*,char const*) ;
 char* stpncpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

int
crypt_md5(const char *pw, const char *salt, char *buffer)
{
 MD5_CTX ctx,ctx1;
 unsigned long l;
 int sl, pl;
 u_int i;
 u_char final[MD5_SIZE];
 const char *ep;
 static const char *magic = "$1$";


 if (!strncmp(salt, magic, strlen(magic)))
  salt += strlen(magic);


 for (ep = salt; *ep && *ep != '$' && ep < salt + 8; ep++)
  continue;


 sl = ep - salt;

 MD5Init(&ctx);


 MD5Update(&ctx, (const u_char *)pw, strlen(pw));


 MD5Update(&ctx, (const u_char *)magic, strlen(magic));


 MD5Update(&ctx, (const u_char *)salt, (u_int)sl);


 MD5Init(&ctx1);
 MD5Update(&ctx1, (const u_char *)pw, strlen(pw));
 MD5Update(&ctx1, (const u_char *)salt, (u_int)sl);
 MD5Update(&ctx1, (const u_char *)pw, strlen(pw));
 MD5Final(final, &ctx1);
 for(pl = (int)strlen(pw); pl > 0; pl -= MD5_SIZE)
  MD5Update(&ctx, (const u_char *)final,
      (u_int)(pl > MD5_SIZE ? MD5_SIZE : pl));


 memset(final, 0, sizeof(final));


 for (i = strlen(pw); i; i >>= 1)
  if(i & 1)
      MD5Update(&ctx, (const u_char *)final, 1);
  else
      MD5Update(&ctx, (const u_char *)pw, 1);


 buffer = stpcpy(buffer, magic);
 buffer = stpncpy(buffer, salt, (u_int)sl);
 *buffer++ = '$';

 MD5Final(final, &ctx);






 for(i = 0; i < 1000; i++) {
  MD5Init(&ctx1);
  if(i & 1)
   MD5Update(&ctx1, (const u_char *)pw, strlen(pw));
  else
   MD5Update(&ctx1, (const u_char *)final, MD5_SIZE);

  if(i % 3)
   MD5Update(&ctx1, (const u_char *)salt, (u_int)sl);

  if(i % 7)
   MD5Update(&ctx1, (const u_char *)pw, strlen(pw));

  if(i & 1)
   MD5Update(&ctx1, (const u_char *)final, MD5_SIZE);
  else
   MD5Update(&ctx1, (const u_char *)pw, strlen(pw));
  MD5Final(final, &ctx1);
 }

 l = (final[ 0]<<16) | (final[ 6]<<8) | final[12];
 _crypt_to64(buffer, l, 4); buffer += 4;
 l = (final[ 1]<<16) | (final[ 7]<<8) | final[13];
 _crypt_to64(buffer, l, 4); buffer += 4;
 l = (final[ 2]<<16) | (final[ 8]<<8) | final[14];
 _crypt_to64(buffer, l, 4); buffer += 4;
 l = (final[ 3]<<16) | (final[ 9]<<8) | final[15];
 _crypt_to64(buffer, l, 4); buffer += 4;
 l = (final[ 4]<<16) | (final[10]<<8) | final[ 5];
 _crypt_to64(buffer, l, 4); buffer += 4;
 l = final[11];
 _crypt_to64(buffer, l, 2); buffer += 2;
 *buffer = '\0';


 memset(final, 0, sizeof(final));

 return (0);
}

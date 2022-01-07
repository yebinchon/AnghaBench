
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secret ;
typedef int apr_size_t ;
typedef int apr_md5_ctx_t ;


 int APR_MD5_DIGESTSIZE ;
 int apr_md5 (unsigned char*,char const*,int) ;
 int apr_md5_final (unsigned char*,int *) ;
 int apr_md5_init (int *) ;
 int apr_md5_update (int *,...) ;
 int memcpy (unsigned char*,char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void compute_digest(unsigned char *digest, const char *challenge,
                           const char *password)
{
  unsigned char secret[64];
  apr_size_t len = strlen(password), i;
  apr_md5_ctx_t ctx;


  memset(secret, 0, sizeof(secret));
  if (len <= sizeof(secret))
    memcpy(secret, password, len);
  else
    apr_md5(secret, password, len);



  for (i = 0; i < sizeof(secret); i++)
    secret[i] ^= 0x36;
  apr_md5_init(&ctx);
  apr_md5_update(&ctx, secret, sizeof(secret));
  apr_md5_update(&ctx, challenge, strlen(challenge));
  apr_md5_final(digest, &ctx);
  for (i = 0; i < sizeof(secret); i++)
    secret[i] ^= (0x36 ^ 0x5c);
  apr_md5_init(&ctx);
  apr_md5_update(&ctx, secret, sizeof(secret));
  apr_md5_update(&ctx, digest, APR_MD5_DIGESTSIZE);
  apr_md5_final(digest, &ctx);
}

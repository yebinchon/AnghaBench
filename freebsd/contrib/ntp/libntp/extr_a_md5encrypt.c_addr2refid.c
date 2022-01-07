
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int u_int ;
typedef int u_char ;
struct in6_addr {int dummy; } ;
typedef int sockaddr_u ;
typedef int addr_refid ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal (int *,int *,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int *,int) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_FLAG_NON_FIPS_ALLOW ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_md5 () ;
 int INIT_SSL () ;
 scalar_t__ IS_IPV4 (int *) ;
 int LOG_ERR ;
 int NSRCADR (int *) ;
 scalar_t__ PSOCK_ADDR6 (int *) ;
 int exit (int) ;
 int memcpy (int *,int *,int) ;
 int msyslog (int ,char*) ;

u_int32
addr2refid(sockaddr_u *addr)
{
 u_char digest[EVP_MAX_MD_SIZE];
 u_int32 addr_refid;
 EVP_MD_CTX *ctx;
 u_int len;

 if (IS_IPV4(addr))
  return (NSRCADR(addr));

 INIT_SSL();

 ctx = EVP_MD_CTX_new();






 if (!EVP_DigestInit_ex(ctx, EVP_md5(), ((void*)0))) {
  msyslog(LOG_ERR,
      "MD5 init failed");
  EVP_MD_CTX_free(ctx);
  exit(1);
 }

 EVP_DigestUpdate(ctx, (u_char *)PSOCK_ADDR6(addr),
     sizeof(struct in6_addr));
 EVP_DigestFinal(ctx, digest, &len);
 EVP_MD_CTX_free(ctx);
 memcpy(&addr_refid, digest, sizeof(addr_refid));
 return (addr_refid);
}

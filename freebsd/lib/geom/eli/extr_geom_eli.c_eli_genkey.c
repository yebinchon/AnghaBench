
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_ctx {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_eli_metadata {int dummy; } ;


 int eli_genkey_files (struct gctl_req*,int,char*,struct hmac_ctx*,int *,int ) ;
 int eli_genkey_passphrase (struct gctl_req*,struct g_eli_metadata*,int,struct hmac_ctx*) ;
 int g_eli_crypto_hmac_final (struct hmac_ctx*,unsigned char*,int ) ;
 int g_eli_crypto_hmac_init (struct hmac_ctx*,int *,int ) ;
 int gctl_error (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;

__attribute__((used)) static unsigned char *
eli_genkey(struct gctl_req *req, struct g_eli_metadata *md, unsigned char *key,
    bool new)
{
 struct hmac_ctx ctx;
 bool nopassphrase;
 int nfiles;

 nopassphrase =
     gctl_get_int(req, new ? "nonewpassphrase" : "nopassphrase");

 g_eli_crypto_hmac_init(&ctx, ((void*)0), 0);

 nfiles = eli_genkey_files(req, new, "keyfile", &ctx, ((void*)0), 0);
 if (nfiles == -1)
  return (((void*)0));
 else if (nfiles == 0 && nopassphrase) {
  gctl_error(req, "No key components given.");
  return (((void*)0));
 }

 if (eli_genkey_passphrase(req, md, new, &ctx) == -1)
  return (((void*)0));

 g_eli_crypto_hmac_final(&ctx, key, 0);

 return (key);
}

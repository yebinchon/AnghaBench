
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_6__ {size_t len; int buf; } ;
typedef TYPE_1__ rwbuffT ;
struct TYPE_7__ {void* buf; int len; } ;
typedef TYPE_2__ robuffT ;
typedef int EVP_MD_CTX ;
typedef int CMAC_CTX ;


 int AES_128_KEY_SIZE ;
 int CMAC ;
 int CMAC_CTX_cleanup (int *) ;
 int * CMAC_CTX_new () ;
 int CMAC_Final (int *,int ,size_t*) ;
 int CMAC_Init (int *,void const*,int,int ,int *) ;
 int CMAC_Update (int *,void*,int) ;
 int EVP_DigestFinal (int *,int ,int*) ;
 int EVP_DigestInit (int *,int ) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,void*,int) ;
 int EVP_MD_CTX_FLAG_NON_FIPS_ALLOW ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 scalar_t__ EVP_MD_CTX_size (int *) ;
 int EVP_aes_128_cbc () ;
 int EVP_get_digestbynid (int) ;
 int INIT_SSL () ;
 int LOG_ERR ;
 int NID_cmac ;
 int NID_md5 ;
 int OBJ_nid2sn (int) ;
 size_t cmac_ctx_size (int *) ;
 int memcpy (int *,void const*,int) ;
 int memset (int *,int ,int) ;
 int msyslog (int ,char*,...) ;

__attribute__((used)) static size_t
make_mac(
 const rwbuffT * digest,
 int ktype,
 const robuffT * key,
 const robuffT * msg)
{





 size_t retlen = 0;
 if (ktype == NID_md5)
 {
  EVP_MD_CTX * ctx = EVP_MD_CTX_new();
  u_int uilen = 0;

  if (digest->len < 16) {
   msyslog(LOG_ERR, "%s", "MAC encrypt: MAC md5 buf too small.");
  }
  else if ( ! ctx) {
   msyslog(LOG_ERR, "%s", "MAC encrypt: MAC md5 Digest CTX new failed.");
  }
  else {
   EVP_DigestInit(ctx, EVP_get_digestbynid(ktype));
   EVP_DigestUpdate(ctx, key->buf, key->len);
   EVP_DigestUpdate(ctx, msg->buf, msg->len);
   EVP_DigestFinal(ctx, digest->buf, &uilen);
  }
  if (ctx)
   EVP_MD_CTX_free(ctx);
  retlen = (size_t)uilen;
 }
 else
 {
  msyslog(LOG_ERR, "MAC encrypt: invalid key type %d" , ktype);
 }



 return retlen;
}

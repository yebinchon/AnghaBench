
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ssize_t ;
typedef int mdata ;
typedef int br_sha1_context ;
struct TYPE_14__ {int elen; void* e; int nlen; void* n; } ;
struct TYPE_13__ {int sig_alg; TYPE_3__* key; int id; } ;
struct TYPE_12__ {void* e; void* n; } ;
typedef TYPE_1__ RSA ;
typedef TYPE_2__ OpenPGP_key ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestFinal (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit (int *,int const*) ;
 int EVP_DigestUpdate (int *,unsigned char*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_PKEY_free (TYPE_3__*) ;
 TYPE_3__* EVP_PKEY_new () ;
 int EVP_PKEY_set1_RSA (TYPE_3__*,TYPE_1__*) ;
 int * EVP_get_digestbyname (char*) ;
 TYPE_3__* NEW (int ) ;
 int RSA_free (TYPE_1__*) ;
 TYPE_1__* RSA_new () ;
 int br_rsa_public_key ;
 unsigned int br_sha1_SIZE ;
 int br_sha1_init (int *) ;
 int br_sha1_out (int *,unsigned char*) ;
 int br_sha1_update (int *,unsigned char*,size_t) ;
 int br_sha512_SIZE ;
 int free (TYPE_3__*) ;
 void* mpi2bn (unsigned char**,...) ;
 int octets2hex (unsigned char*,int) ;

ssize_t
decode_key(int tag, unsigned char **pptr, size_t len, OpenPGP_key *key)
{
 unsigned char *ptr;
 int version;





 RSA *rsa = ((void*)0);
 const EVP_MD *md = ((void*)0);
 EVP_MD_CTX mctx;
 unsigned char mdata[EVP_MAX_MD_SIZE];
 unsigned int mlen;


 if (tag != 6)
  return (-1);

 key->key = ((void*)0);
 ptr = *pptr;
 version = *ptr;
 if (version == 4) {

  mdata[0] = 0x99;
  mdata[1] = (len >> 8) & 0xff;
  mdata[2] = len & 0xff;
  md = EVP_get_digestbyname("sha1");
  EVP_DigestInit(&mctx, md);
  EVP_DigestUpdate(&mctx, mdata, 3);
  EVP_DigestUpdate(&mctx, ptr, len);
  mlen = (unsigned int)sizeof(mdata);
  EVP_DigestFinal(&mctx, mdata, &mlen);

  key->id = octets2hex(&mdata[mlen - 8], 8);
 }
 ptr += 1;
 ptr += 4;
 if (version == 3)
  ptr += 2;
 key->sig_alg = *ptr++;
 if (key->sig_alg == 1) {







  rsa = RSA_new();
  if (!rsa)
   goto oops;
  rsa->n = mpi2bn(&ptr);
  rsa->e = mpi2bn(&ptr);
  key->key = EVP_PKEY_new();
  if (!key->key || !rsa->n || !rsa->e) {
   goto oops;
  }
  if (!EVP_PKEY_set1_RSA(key->key, rsa))
   goto oops;

 }

 return ((ssize_t)len);
oops:




 if (rsa)
  RSA_free(rsa);
 if (key->key) {
  EVP_PKEY_free(key->key);
  key->key = ((void*)0);
 }

 return (-1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int type; int rsa; int ecdsa; int dsa; } ;
struct sshbuf {int dummy; } ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_get_mem_data (int *,char**) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int * EVP_aes_128_cbc () ;



 int PEM_write_bio_DSAPrivateKey (int *,int ,int const*,int *,int,int *,int *) ;
 int PEM_write_bio_ECPrivateKey (int *,int ,int const*,int *,int,int *,int *) ;
 int PEM_write_bio_RSAPrivateKey (int *,int ,int const*,int *,int,int *,int *) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_PASSPHRASE_TOO_SHORT ;
 int sshbuf_put (struct sshbuf*,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
sshkey_private_pem_to_blob(struct sshkey *key, struct sshbuf *blob,
    const char *_passphrase, const char *comment)
{
 int success, r;
 int blen, len = strlen(_passphrase);
 u_char *passphrase = (len > 0) ? (u_char *)_passphrase : ((void*)0);
 const EVP_CIPHER *cipher = (len > 0) ? EVP_aes_128_cbc() : ((void*)0);
 char *bptr;
 BIO *bio = ((void*)0);

 if (len > 0 && len <= 4)
  return SSH_ERR_PASSPHRASE_TOO_SHORT;
 if ((bio = BIO_new(BIO_s_mem())) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 switch (key->type) {
 case 130:
  success = PEM_write_bio_DSAPrivateKey(bio, key->dsa,
      cipher, passphrase, len, ((void*)0), ((void*)0));
  break;






 case 128:
  success = PEM_write_bio_RSAPrivateKey(bio, key->rsa,
      cipher, passphrase, len, ((void*)0), ((void*)0));
  break;
 default:
  success = 0;
  break;
 }
 if (success == 0) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if ((blen = BIO_get_mem_data(bio, &bptr)) <= 0) {
  r = SSH_ERR_INTERNAL_ERROR;
  goto out;
 }
 if ((r = sshbuf_put(blob, bptr, blen)) != 0)
  goto out;
 r = 0;
 out:
 BIO_free(bio);
 return r;
}

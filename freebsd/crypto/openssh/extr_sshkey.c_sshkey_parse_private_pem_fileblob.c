
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int ecdsa_nid; int * ecdsa; int dsa; int rsa; } ;
struct sshbuf {int dummy; } ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_write (int *,int ,scalar_t__) ;
 int DSA_print_fp (int ,int ,int) ;
 int EC_KEY_get0_group (int *) ;
 int EC_KEY_get0_public_key (int *) ;
 scalar_t__ EVP_PKEY_DSA ;
 scalar_t__ EVP_PKEY_EC ;
 scalar_t__ EVP_PKEY_RSA ;
 scalar_t__ EVP_PKEY_base_id (int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_get1_DSA (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int EVP_PKEY_get1_RSA (int *) ;
 scalar_t__ INT_MAX ;
 int KEY_DSA ;
 int KEY_ECDSA ;
 int KEY_RSA ;
 int KEY_UNSPEC ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,char*) ;
 int RSA_blinding_on (int ,int *) ;
 int RSA_print_fp (int ,int ,int) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int check_rsa_length (int ) ;
 int clear_libcrypto_errors () ;
 int convert_libcrypto_error () ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 int sshbuf_ptr (struct sshbuf*) ;
 int * sshkey_curve_nid_to_name (int) ;
 int sshkey_dump_ec_key (int *) ;
 scalar_t__ sshkey_ec_validate_private (int *) ;
 scalar_t__ sshkey_ec_validate_public (int ,int ) ;
 int sshkey_ecdsa_key_to_nid (int *) ;
 int sshkey_free (struct sshkey*) ;
 struct sshkey* sshkey_new (int) ;
 int stderr ;

__attribute__((used)) static int
sshkey_parse_private_pem_fileblob(struct sshbuf *blob, int type,
    const char *passphrase, struct sshkey **keyp)
{
 EVP_PKEY *pk = ((void*)0);
 struct sshkey *prv = ((void*)0);
 BIO *bio = ((void*)0);
 int r;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);

 if ((bio = BIO_new(BIO_s_mem())) == ((void*)0) || sshbuf_len(blob) > INT_MAX)
  return SSH_ERR_ALLOC_FAIL;
 if (BIO_write(bio, sshbuf_ptr(blob), sshbuf_len(blob)) !=
     (int)sshbuf_len(blob)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }

 clear_libcrypto_errors();
 if ((pk = PEM_read_bio_PrivateKey(bio, ((void*)0), ((void*)0),
     (char *)passphrase)) == ((void*)0)) {
  r = convert_libcrypto_error();
  goto out;
 }
 if (EVP_PKEY_base_id(pk) == EVP_PKEY_RSA &&
     (type == KEY_UNSPEC || type == KEY_RSA)) {
  if ((prv = sshkey_new(KEY_UNSPEC)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  prv->rsa = EVP_PKEY_get1_RSA(pk);
  prv->type = KEY_RSA;



  if (RSA_blinding_on(prv->rsa, ((void*)0)) != 1) {
   r = SSH_ERR_LIBCRYPTO_ERROR;
   goto out;
  }
  if ((r = check_rsa_length(prv->rsa)) != 0)
   goto out;
 } else if (EVP_PKEY_base_id(pk) == EVP_PKEY_DSA &&
     (type == KEY_UNSPEC || type == KEY_DSA)) {
  if ((prv = sshkey_new(KEY_UNSPEC)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  prv->dsa = EVP_PKEY_get1_DSA(pk);
  prv->type = KEY_DSA;
 } else {
  r = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 r = 0;
 if (keyp != ((void*)0)) {
  *keyp = prv;
  prv = ((void*)0);
 }
 out:
 BIO_free(bio);
 EVP_PKEY_free(pk);
 sshkey_free(prv);
 return r;
}

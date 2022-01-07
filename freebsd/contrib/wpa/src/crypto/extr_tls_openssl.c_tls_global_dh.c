
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_data {int * ssl; } ;
typedef int SSL_CTX ;
typedef int DSA ;
typedef int DH ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int DH_free (int *) ;
 int * DSA_dup_DH (int *) ;
 int DSA_free (int *) ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int * PEM_read_bio_DHparams (int *,int *,int *,int *) ;
 int * PEM_read_bio_DSAparams (int *,int *,int *,int *) ;
 int SSL_CTX_set_tmp_dh (int *,int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_global_dh(struct tls_data *data, const char *dh_file)
{







 SSL_CTX *ssl_ctx = data->ssl;
 DH *dh;
 BIO *bio;


 if (dh_file == ((void*)0))
  return 0;
 if (ssl_ctx == ((void*)0))
  return -1;

 bio = BIO_new_file(dh_file, "r");
 if (bio == ((void*)0)) {
  wpa_printf(MSG_INFO, "TLS: Failed to open DH file '%s': %s",
      dh_file, ERR_error_string(ERR_get_error(), ((void*)0)));
  return -1;
 }
 dh = PEM_read_bio_DHparams(bio, ((void*)0), ((void*)0), ((void*)0));
 BIO_free(bio);

 while (dh == ((void*)0)) {
  DSA *dsa;
  wpa_printf(MSG_DEBUG, "TLS: Failed to parse DH file '%s': %s -"
      " trying to parse as DSA params", dh_file,
      ERR_error_string(ERR_get_error(), ((void*)0)));
  bio = BIO_new_file(dh_file, "r");
  if (bio == ((void*)0))
   break;
  dsa = PEM_read_bio_DSAparams(bio, ((void*)0), ((void*)0), ((void*)0));
  BIO_free(bio);
  if (!dsa) {
   wpa_printf(MSG_DEBUG, "TLS: Failed to parse DSA file "
       "'%s': %s", dh_file,
       ERR_error_string(ERR_get_error(), ((void*)0)));
   break;
  }

  wpa_printf(MSG_DEBUG, "TLS: DH file in DSA param format");
  dh = DSA_dup_DH(dsa);
  DSA_free(dsa);
  if (dh == ((void*)0)) {
   wpa_printf(MSG_INFO, "TLS: Failed to convert DSA "
       "params into DH params");
   break;
  }
  break;
 }

 if (dh == ((void*)0)) {
  wpa_printf(MSG_INFO, "TLS: Failed to read/parse DH/DSA file "
      "'%s'", dh_file);
  return -1;
 }

 if (SSL_CTX_set_tmp_dh(ssl_ctx, dh) != 1) {
  wpa_printf(MSG_INFO, "TLS: Failed to set DH params from '%s': "
      "%s", dh_file,
      ERR_error_string(ERR_get_error(), ((void*)0)));
  DH_free(dh);
  return -1;
 }
 DH_free(dh);
 return 0;

}

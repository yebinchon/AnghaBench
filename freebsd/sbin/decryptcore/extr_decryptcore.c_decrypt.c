
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kerneldumpkey {int kdk_encryptedkeysize; int kdk_encryption; int * kdk_iv; int kdk_encryptedkey; } ;
typedef scalar_t__ ssize_t ;
typedef int pid_t ;
typedef int key ;
typedef int buf ;
typedef int RSA ;
typedef int FILE ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 scalar_t__ EVP_DecryptFinal_ex (int *,int *,int*) ;
 int EVP_DecryptInit_ex (int *,int const*,int *,int *,int *) ;
 scalar_t__ EVP_DecryptUpdate (int *,int *,int*,int *,scalar_t__) ;
 int * EVP_aes_256_cbc () ;
 int * EVP_chacha20 () ;
 int KERNELDUMP_BUFFER_SIZE ;


 int KERNELDUMP_KEY_MAX_SIZE ;
 int LOG_ERR ;
 int O_RDONLY ;
 int * PEM_read_RSAPrivateKey (int *,int **,int *,int *) ;
 int PJDLOG_ASSERT (int) ;
 int RSA_PKCS1_PADDING ;
 int RSA_free (int *) ;
 int * RSA_new () ;
 int RSA_private_decrypt (int,int ,int *,int *,int ) ;
 int RSA_size (int *) ;
 scalar_t__ caph_enter () ;
 int close (int) ;
 int exit (int) ;
 int explicit_bzero (int *,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fork () ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int open (char const*,int ) ;
 int pjdlog_errno (int ,char*,...) ;
 int pjdlog_error (char*,...) ;
 scalar_t__ read (int,int *,int) ;
 struct kerneldumpkey* read_key (int) ;
 scalar_t__ wait_for_process (int) ;
 int write (int,int *,int) ;

__attribute__((used)) static bool
decrypt(int ofd, const char *privkeyfile, const char *keyfile,
    const char *input)
{
 uint8_t buf[KERNELDUMP_BUFFER_SIZE], key[KERNELDUMP_KEY_MAX_SIZE],
     chachaiv[4 * 4];
 EVP_CIPHER_CTX *ctx;
 const EVP_CIPHER *cipher;
 FILE *fp;
 struct kerneldumpkey *kdk;
 RSA *privkey;
 int ifd, kfd, olen, privkeysize;
 ssize_t bytes;
 pid_t pid;

 PJDLOG_ASSERT(ofd >= 0);
 PJDLOG_ASSERT(privkeyfile != ((void*)0));
 PJDLOG_ASSERT(keyfile != ((void*)0));
 PJDLOG_ASSERT(input != ((void*)0));

 ctx = ((void*)0);
 privkey = ((void*)0);





 pid = fork();
 if (pid == -1) {
  pjdlog_errno(LOG_ERR, "Unable to create child process");
  close(ofd);
  return (0);
 }

 if (pid > 0) {
  close(ofd);
  return (wait_for_process(pid) == 0);
 }

 kfd = open(keyfile, O_RDONLY);
 if (kfd == -1) {
  pjdlog_errno(LOG_ERR, "Unable to open %s", keyfile);
  goto failed;
 }
 ifd = open(input, O_RDONLY);
 if (ifd == -1) {
  pjdlog_errno(LOG_ERR, "Unable to open %s", input);
  goto failed;
 }
 fp = fopen(privkeyfile, "r");
 if (fp == ((void*)0)) {
  pjdlog_errno(LOG_ERR, "Unable to open %s", privkeyfile);
  goto failed;
 }

 if (caph_enter() < 0) {
  pjdlog_errno(LOG_ERR, "Unable to enter capability mode");
  goto failed;
 }

 privkey = RSA_new();
 if (privkey == ((void*)0)) {
  pjdlog_error("Unable to allocate an RSA structure: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto failed;
 }
 ctx = EVP_CIPHER_CTX_new();
 if (ctx == ((void*)0))
  goto failed;

 kdk = read_key(kfd);
 close(kfd);
 if (kdk == ((void*)0))
  goto failed;

 privkey = PEM_read_RSAPrivateKey(fp, &privkey, ((void*)0), ((void*)0));
 fclose(fp);
 if (privkey == ((void*)0)) {
  pjdlog_error("Unable to read data from %s.", privkeyfile);
  goto failed;
 }

 privkeysize = RSA_size(privkey);
 if (privkeysize != (int)kdk->kdk_encryptedkeysize) {
  pjdlog_error("RSA modulus size mismatch: equals %db and should be %ub.",
      8 * privkeysize, 8 * kdk->kdk_encryptedkeysize);
  goto failed;
 }

 switch (kdk->kdk_encryption) {
 case 129:
  cipher = EVP_aes_256_cbc();
  break;
 case 128:
  cipher = EVP_chacha20();
  break;
 default:
  pjdlog_error("Invalid encryption algorithm.");
  goto failed;
 }

 if (RSA_private_decrypt(kdk->kdk_encryptedkeysize,
     kdk->kdk_encryptedkey, key, privkey,
     RSA_PKCS1_PADDING) != sizeof(key)) {
  pjdlog_error("Unable to decrypt key: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto failed;
 }
 RSA_free(privkey);
 privkey = ((void*)0);

 if (kdk->kdk_encryption == 128) {
  memset(chachaiv, 0, 4 * 2);



  memcpy(&chachaiv[4 * 2], kdk->kdk_iv, 4 * 2);
  EVP_DecryptInit_ex(ctx, cipher, ((void*)0), key, chachaiv);
 } else
  EVP_DecryptInit_ex(ctx, cipher, ((void*)0), key, kdk->kdk_iv);
 EVP_CIPHER_CTX_set_padding(ctx, 0);

 explicit_bzero(key, sizeof(key));

 do {
  bytes = read(ifd, buf, sizeof(buf));
  if (bytes < 0) {
   pjdlog_errno(LOG_ERR, "Unable to read data from %s",
       input);
   goto failed;
  }

  if (bytes > 0) {
   if (EVP_DecryptUpdate(ctx, buf, &olen, buf,
       bytes) == 0) {
    pjdlog_error("Unable to decrypt core.");
    goto failed;
   }
  } else {
   if (EVP_DecryptFinal_ex(ctx, buf, &olen) == 0) {
    pjdlog_error("Unable to decrypt core.");
    goto failed;
   }
  }

  if (olen > 0 && write(ofd, buf, olen) != olen) {
   pjdlog_errno(LOG_ERR, "Unable to write core");
   goto failed;
  }
 } while (bytes > 0);

 explicit_bzero(buf, sizeof(buf));
 EVP_CIPHER_CTX_free(ctx);
 exit(0);
failed:
 explicit_bzero(key, sizeof(key));
 explicit_bzero(buf, sizeof(buf));
 RSA_free(privkey);
 if (ctx != ((void*)0))
  EVP_CIPHER_CTX_free(ctx);
 exit(1);
}

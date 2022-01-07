
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_private_key ;
typedef int RSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int RSA_free (int *) ;
 int RSA_generate_key_ex (int *,int,int *,int *) ;
 int * RSA_new () ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int free (unsigned char*) ;
 size_t i2d_RSAPrivateKey (int *,unsigned char**) ;
 unsigned char* malloc (size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int read_private_key (char const*,int *) ;
 int rk_dumpdata (char const*,unsigned char*,size_t) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void
get_key(const char *fn, const char *type, int optbits,
 hx509_private_key *signer)
{
    int ret;

    if (type) {
 BIGNUM *e;
 RSA *rsa;
 unsigned char *p0, *p;
 size_t len;
 int bits = 1024;

 if (fn == ((void*)0))
     errx(1, "no key argument, don't know here to store key");

 if (strcasecmp(type, "rsa") != 0)
     errx(1, "can only handle rsa keys for now");

 e = BN_new();
 BN_set_word(e, 0x10001);

 if (optbits)
     bits = optbits;

 rsa = RSA_new();
 if(rsa == ((void*)0))
     errx(1, "RSA_new failed");

 ret = RSA_generate_key_ex(rsa, bits, e, ((void*)0));
 if(ret != 1)
     errx(1, "RSA_new failed");

 BN_free(e);

 len = i2d_RSAPrivateKey(rsa, ((void*)0));

 p0 = p = malloc(len);
 if (p == ((void*)0))
     errx(1, "out of memory");

 i2d_RSAPrivateKey(rsa, &p);

 rk_dumpdata(fn, p0, len);
 memset(p0, 0, len);
 free(p0);

 RSA_free(rsa);

    } else if (fn == ((void*)0))
 err(1, "no private key");

    ret = read_private_key(fn, signer);
    if (ret)
 err(1, "read_private_key");
}

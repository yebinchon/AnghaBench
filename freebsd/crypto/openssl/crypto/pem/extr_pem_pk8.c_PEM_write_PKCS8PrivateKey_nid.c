
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int FILE ;
typedef int EVP_PKEY ;


 int do_pk8pkey_fp (int *,int *,int ,int,int *,char*,int,int *,void*) ;

int PEM_write_PKCS8PrivateKey_nid(FILE *fp, EVP_PKEY *x, int nid,
                                  char *kstr, int klen,
                                  pem_password_cb *cb, void *u)
{
    return do_pk8pkey_fp(fp, x, 0, nid, ((void*)0), kstr, klen, cb, u);
}

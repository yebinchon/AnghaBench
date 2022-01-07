
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_MD_meth_free (int *) ;
 int * _hidden_md5_md ;
 int * _hidden_sha1_md ;
 int * _hidden_sha256_md ;
 int * _hidden_sha384_md ;
 int * _hidden_sha512_md ;

__attribute__((used)) static void destroy_digests(void)
{
    EVP_MD_meth_free(_hidden_md5_md);
    _hidden_md5_md = ((void*)0);
    EVP_MD_meth_free(_hidden_sha1_md);
    _hidden_sha1_md = ((void*)0);
    EVP_MD_meth_free(_hidden_sha256_md);
    _hidden_sha256_md = ((void*)0);
    EVP_MD_meth_free(_hidden_sha384_md);
    _hidden_sha384_md = ((void*)0);
    EVP_MD_meth_free(_hidden_sha512_md);
    _hidden_sha512_md = ((void*)0);
}

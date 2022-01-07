
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int finishedlabel ;
typedef int SSL ;
typedef int EVP_MD ;


 int tls13_hkdf_expand (int *,int const*,unsigned char const*,unsigned char const*,int,int *,int ,unsigned char*,size_t,int) ;

int tls13_derive_finishedkey(SSL *s, const EVP_MD *md,
                             const unsigned char *secret,
                             unsigned char *fin, size_t finlen)
{



  static const unsigned char finishedlabel[] = "finished";


    return tls13_hkdf_expand(s, md, secret, finishedlabel,
                             sizeof(finishedlabel) - 1, ((void*)0), 0, fin, finlen, 1);
}

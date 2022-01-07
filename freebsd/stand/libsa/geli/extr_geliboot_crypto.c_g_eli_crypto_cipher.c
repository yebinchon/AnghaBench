
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int iv ;


 int explicit_bzero (int *,int) ;
 int geliboot_crypt (int ,int,int *,size_t,int const*,size_t,int *) ;

__attribute__((used)) static int
g_eli_crypto_cipher(u_int algo, int enc, u_char *data, size_t datasize,
    const u_char *key, size_t keysize)
{
 u_char iv[keysize];

 explicit_bzero(iv, sizeof(iv));
 return (geliboot_crypt(algo, enc, data, datasize, key, keysize, iv));
}

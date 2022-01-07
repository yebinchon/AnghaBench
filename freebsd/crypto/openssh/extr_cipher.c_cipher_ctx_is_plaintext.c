
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshcipher_ctx {int plaintext; } ;



u_int
cipher_ctx_is_plaintext(struct sshcipher_ctx *cc)
{
 return cc->plaintext;
}

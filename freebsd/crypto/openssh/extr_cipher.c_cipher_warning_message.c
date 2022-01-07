
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshcipher_ctx {int * cipher; } ;



const char *
cipher_warning_message(const struct sshcipher_ctx *cc)
{
 if (cc == ((void*)0) || cc->cipher == ((void*)0))
  return ((void*)0);

 return ((void*)0);
}

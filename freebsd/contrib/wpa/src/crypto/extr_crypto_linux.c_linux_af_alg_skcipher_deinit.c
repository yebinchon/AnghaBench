
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_af_alg_skcipher {scalar_t__ s; scalar_t__ t; } ;


 int close (scalar_t__) ;
 int os_free (struct linux_af_alg_skcipher*) ;

__attribute__((used)) static void linux_af_alg_skcipher_deinit(struct linux_af_alg_skcipher *skcipher)
{
 if (!skcipher)
  return;
 if (skcipher->s >= 0)
  close(skcipher->s);
 if (skcipher->t >= 0)
  close(skcipher->t);
 os_free(skcipher);
}

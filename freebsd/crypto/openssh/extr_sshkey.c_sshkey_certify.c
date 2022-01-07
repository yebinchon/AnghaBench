
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int default_key_sign ;
 int sshkey_certify_custom (struct sshkey*,struct sshkey*,char const*,int ,int *) ;

int
sshkey_certify(struct sshkey *k, struct sshkey *ca, const char *alg)
{
 return sshkey_certify_custom(k, ca, alg, default_key_sign, ((void*)0));
}

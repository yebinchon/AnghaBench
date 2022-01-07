
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct pkcs11_keyinfo {struct sshkey* key; int providername; } ;


 int TAILQ_INSERT_TAIL (int *,struct pkcs11_keyinfo*,int ) ;
 int next ;
 int pkcs11_keylist ;
 struct pkcs11_keyinfo* xcalloc (int,int) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
add_key(struct sshkey *k, char *name)
{
 struct pkcs11_keyinfo *ki;

 ki = xcalloc(1, sizeof(*ki));
 ki->providername = xstrdup(name);
 ki->key = k;
 TAILQ_INSERT_TAIL(&pkcs11_keylist, ki, next);
}

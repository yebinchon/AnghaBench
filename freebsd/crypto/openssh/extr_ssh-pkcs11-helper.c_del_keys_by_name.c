
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs11_keyinfo {int key; struct pkcs11_keyinfo* providername; } ;


 struct pkcs11_keyinfo* TAILQ_FIRST (int *) ;
 struct pkcs11_keyinfo* TAILQ_NEXT (struct pkcs11_keyinfo*,int ) ;
 int TAILQ_REMOVE (int *,struct pkcs11_keyinfo*,int ) ;
 int free (struct pkcs11_keyinfo*) ;
 int next ;
 int pkcs11_keylist ;
 int sshkey_free (int ) ;
 int strcmp (struct pkcs11_keyinfo*,char*) ;

__attribute__((used)) static void
del_keys_by_name(char *name)
{
 struct pkcs11_keyinfo *ki, *nxt;

 for (ki = TAILQ_FIRST(&pkcs11_keylist); ki; ki = nxt) {
  nxt = TAILQ_NEXT(ki, next);
  if (!strcmp(ki->providername, name)) {
   TAILQ_REMOVE(&pkcs11_keylist, ki, next);
   free(ki->providername);
   sshkey_free(ki->key);
   free(ki);
  }
 }
}

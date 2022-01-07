
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_identitylist {size_t nkeys; struct ssh_identitylist** comments; int * keys; } ;


 int free (struct ssh_identitylist*) ;
 int sshkey_free (int ) ;

void
ssh_free_identitylist(struct ssh_identitylist *idl)
{
 size_t i;

 if (idl == ((void*)0))
  return;
 for (i = 0; i < idl->nkeys; i++) {
  if (idl->keys != ((void*)0))
   sshkey_free(idl->keys[i]);
  if (idl->comments != ((void*)0))
   free(idl->comments[i]);
 }
 free(idl);
}

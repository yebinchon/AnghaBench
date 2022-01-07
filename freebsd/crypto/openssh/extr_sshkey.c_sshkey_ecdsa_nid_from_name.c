
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int nid; int * name; } ;


 int KEY_ECDSA ;
 int KEY_ECDSA_CERT ;
 struct keytype* keytypes ;
 scalar_t__ strcmp (char const*,int *) ;

int
sshkey_ecdsa_nid_from_name(const char *name)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (kt->type != KEY_ECDSA && kt->type != KEY_ECDSA_CERT)
   continue;
  if (kt->name != ((void*)0) && strcmp(name, kt->name) == 0)
   return kt->nid;
 }
 return -1;
}

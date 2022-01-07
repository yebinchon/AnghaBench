
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; char const* name; char const* sigalg; int nid; int cert; } ;


 struct keytype* keytypes ;
 char const* sshkey_ssh_name_from_type_nid (int ,int ) ;
 int sshkey_type_plain (int) ;
 scalar_t__ strcmp (char const*,char const*) ;

const char *
sshkey_sigalg_by_name(const char *name)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (strcmp(kt->name, name) != 0)
   continue;
  if (kt->sigalg != ((void*)0))
   return kt->sigalg;
  if (!kt->cert)
   return kt->name;
  return sshkey_ssh_name_from_type_nid(
      sshkey_type_plain(kt->type), kt->nid);
 }
 return ((void*)0);
}

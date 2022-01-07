
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int nid; char const* name; } ;


 struct keytype* keytypes ;

__attribute__((used)) static const char *
sshkey_ssh_name_from_type_nid(int type, int nid)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (kt->type == type && (kt->nid == 0 || kt->nid == nid))
   return kt->name;
 }
 return "ssh-unknown";
}

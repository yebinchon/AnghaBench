
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; } ;
struct keytype {int type; char const* shortname; } ;


 struct keytype* keytypes ;

const char *
sshkey_type(const struct sshkey *k)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (kt->type == k->type)
   return kt->shortname;
 }
 return "unknown";
}

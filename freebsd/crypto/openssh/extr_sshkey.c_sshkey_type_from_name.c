
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int shortname; int cert; int * name; } ;


 int KEY_UNSPEC ;
 struct keytype* keytypes ;
 scalar_t__ strcasecmp (int ,char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

int
sshkey_type_from_name(const char *name)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {

  if ((kt->name != ((void*)0) && strcmp(name, kt->name) == 0) ||
      (!kt->cert && strcasecmp(kt->shortname, name) == 0))
   return kt->type;
 }
 return KEY_UNSPEC;
}

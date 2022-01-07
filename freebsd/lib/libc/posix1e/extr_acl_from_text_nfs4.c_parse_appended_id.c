
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int id_t ;
typedef int acl_entry_t ;


 int acl_set_qualifier (int ,int *) ;
 int strlen (char*) ;
 int strtod (char*,char**) ;
 int warnx (char*) ;

__attribute__((used)) static int
parse_appended_id(char *str, acl_entry_t entry)
{
 int qualifier_length;
 char *end;
 id_t id;

 qualifier_length = strlen(str);
 if (qualifier_length == 0) {
  warnx("malformed ACL: \"appended id\" field present, "
            "but empty");
  return (-1);
 }

 id = strtod(str, &end);
 if (end - str != qualifier_length) {
  warnx("malformed ACL: appended id is not a number");
  return (-1);
 }

 return (acl_set_qualifier(entry, &id));
}

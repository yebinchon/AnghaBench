
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int acl_tag_t ;
typedef int acl_entry_t ;


 int _acl_name_to_id (int ,char*,int *) ;
 int acl_get_tag_type (int ,int *) ;
 int acl_set_qualifier (int ,int *) ;
 int assert (int ) ;
 int strlen (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
parse_qualifier(char *str, acl_entry_t entry, int *need_qualifier)
{
 int qualifier_length, error;
 uid_t id;
 acl_tag_t tag;

 assert(need_qualifier != ((void*)0));
 *need_qualifier = 0;

 qualifier_length = strlen(str);

 if (qualifier_length == 0) {
  warnx("malformed ACL: empty \"qualifier\" field");
  return (-1);
 }

 error = acl_get_tag_type(entry, &tag);
 if (error)
  return (error);

 error = _acl_name_to_id(tag, str, &id);
 if (error) {
  *need_qualifier = 1;
  return (0);
 }

 return (acl_set_qualifier(entry, &id));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_entry_t ;


 int ACL_EVERYONE ;
 int ACL_GROUP ;
 int ACL_GROUP_OBJ ;
 int ACL_USER ;
 int ACL_USER_OBJ ;
 int acl_set_tag_type (int ,int ) ;
 int assert (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
parse_tag(const char *str, acl_entry_t entry, int *need_qualifier)
{

 assert(need_qualifier != ((void*)0));
 *need_qualifier = 0;

 if (strcmp(str, "owner@") == 0)
  return (acl_set_tag_type(entry, ACL_USER_OBJ));
 if (strcmp(str, "group@") == 0)
  return (acl_set_tag_type(entry, ACL_GROUP_OBJ));
 if (strcmp(str, "everyone@") == 0)
  return (acl_set_tag_type(entry, ACL_EVERYONE));

 *need_qualifier = 1;

 if (strcmp(str, "user") == 0 || strcmp(str, "u") == 0)
  return (acl_set_tag_type(entry, ACL_USER));
 if (strcmp(str, "group") == 0 || strcmp(str, "g") == 0)
  return (acl_set_tag_type(entry, ACL_GROUP));

 warnx("malformed ACL: invalid \"tag\" field");

 return (-1);
}

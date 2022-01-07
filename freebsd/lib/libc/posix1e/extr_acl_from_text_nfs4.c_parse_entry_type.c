
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_entry_t ;


 int ACL_ENTRY_TYPE_ALARM ;
 int ACL_ENTRY_TYPE_ALLOW ;
 int ACL_ENTRY_TYPE_AUDIT ;
 int ACL_ENTRY_TYPE_DENY ;
 int acl_set_entry_type_np (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
parse_entry_type(const char *str, acl_entry_t entry)
{

 if (strcmp(str, "allow") == 0)
  return (acl_set_entry_type_np(entry, ACL_ENTRY_TYPE_ALLOW));
 if (strcmp(str, "deny") == 0)
  return (acl_set_entry_type_np(entry, ACL_ENTRY_TYPE_DENY));
 if (strcmp(str, "audit") == 0)
  return (acl_set_entry_type_np(entry, ACL_ENTRY_TYPE_AUDIT));
 if (strcmp(str, "alarm") == 0)
  return (acl_set_entry_type_np(entry, ACL_ENTRY_TYPE_ALARM));

 warnx("malformed ACL: invalid \"type\" field");

 return (-1);
}

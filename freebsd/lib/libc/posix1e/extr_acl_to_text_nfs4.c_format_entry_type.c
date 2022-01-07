
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_entry_type_t ;
typedef int acl_entry_t ;






 int acl_get_entry_type_np (int const,int*) ;
 int snprintf (char*,size_t,char*) ;

__attribute__((used)) static int
format_entry_type(char *str, size_t size, const acl_entry_t entry)
{
 int error;
 acl_entry_type_t entry_type;

 error = acl_get_entry_type_np(entry, &entry_type);
 if (error)
  return (error);

 switch (entry_type) {
 case 130:
  snprintf(str, size, "allow");
  break;
 case 128:
  snprintf(str, size, "deny");
  break;
 case 129:
  snprintf(str, size, "audit");
  break;
 case 131:
  snprintf(str, size, "alarm");
  break;
 default:
  return (-1);
 }

 return (0);
}

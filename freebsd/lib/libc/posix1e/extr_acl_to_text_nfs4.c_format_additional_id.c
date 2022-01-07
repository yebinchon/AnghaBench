
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int acl_tag_t ;
typedef int acl_entry_t ;





 scalar_t__ acl_get_qualifier (int const) ;
 int acl_get_tag_type (int const,int*) ;
 int snprintf (char*,size_t,char*,unsigned int) ;

__attribute__((used)) static int
format_additional_id(char *str, size_t size, const acl_entry_t entry)
{
 int error;
 acl_tag_t tag;
 uid_t *id;

 error = acl_get_tag_type(entry, &tag);
 if (error)
  return (error);

 switch (tag) {
 case 128:
 case 129:
 case 130:
  str[0] = '\0';
  break;

 default:
  id = (uid_t *)acl_get_qualifier(entry);
  if (id == ((void*)0))
   return (-1);
  snprintf(str, size, ":%d", (unsigned int)*id);
 }

 return (0);
}

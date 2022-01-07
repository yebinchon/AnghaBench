
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int acl_tag_t ;
typedef int acl_t ;
typedef int acl_perm_t ;


 scalar_t__ ACL_BRAND_POSIX ;






 int EINVAL ;
 scalar_t__ _acl_brand (int ) ;
 int _acl_name_to_id (int,char*,int *) ;
 int _posix1e_acl_add_entry (int ,int,int ,int ) ;
 int _posix1e_acl_string_to_perm (char*,int *) ;
 int acl_string_to_tag (char*,char*) ;
 int assert (int) ;
 int errno ;
 char* string_skip_whitespace (char*) ;
 int string_trim_trailing_whitespace (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
_posix1e_acl_entry_from_text(acl_t aclp, char *entry)
{
 acl_tag_t t;
 acl_perm_t p;
 char *tag, *qualifier, *permission;
 uid_t id;
 int error;

 assert(_acl_brand(aclp) == ACL_BRAND_POSIX);


 tag = strsep(&entry, ":");
 if (tag == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 tag = string_skip_whitespace(tag);
 if ((*tag == '\0') && (!entry)) {




  return (0);
 }
 string_trim_trailing_whitespace(tag);

 qualifier = strsep(&entry, ":");
 if (qualifier == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 qualifier = string_skip_whitespace(qualifier);
 string_trim_trailing_whitespace(qualifier);

 permission = strsep(&entry, ":");
 if (permission == ((void*)0) || entry) {
  errno = EINVAL;
  return (-1);
 }
 permission = string_skip_whitespace(permission);
 string_trim_trailing_whitespace(permission);

 t = acl_string_to_tag(tag, qualifier);
 if (t == -1) {
  errno = EINVAL;
  return (-1);
 }

 error = _posix1e_acl_string_to_perm(permission, &p);
 if (error == -1) {
  errno = EINVAL;
  return (-1);
 }

 switch(t) {
  case 128:
  case 132:
  case 131:
  case 130:
   if (*qualifier != '\0') {
    errno = EINVAL;
    return (-1);
   }
   id = 0;
   break;

  case 129:
  case 133:
   error = _acl_name_to_id(t, qualifier, &id);
   if (error == -1)
    return (-1);
   break;

  default:
   errno = EINVAL;
   return (-1);
 }

 error = _posix1e_acl_add_entry(aclp, t, id, p);
 if (error == -1)
  return (-1);

 return (0);
}

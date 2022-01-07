
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EXTATTR_NAMESPACE_SYSTEM ;
 int EXTATTR_NAMESPACE_SYSTEM_STRING ;
 int EXTATTR_NAMESPACE_USER ;
 int EXTATTR_NAMESPACE_USER_STRING ;
 int errno ;
 int strcmp (char const*,int ) ;

int
extattr_string_to_namespace(const char *string, int *attrnamespace)
{

 if (!strcmp(string, EXTATTR_NAMESPACE_USER_STRING)) {
  if (attrnamespace != ((void*)0))
   *attrnamespace = EXTATTR_NAMESPACE_USER;
  return (0);
 } else if (!strcmp(string, EXTATTR_NAMESPACE_SYSTEM_STRING)) {
  if (attrnamespace != ((void*)0))
   *attrnamespace = EXTATTR_NAMESPACE_SYSTEM;
  return (0);
 } else {
  errno = EINVAL;
  return (-1);
 }
}

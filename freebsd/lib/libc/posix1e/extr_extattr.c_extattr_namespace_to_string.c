
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

 int EXTATTR_NAMESPACE_SYSTEM_STRING ;

 int EXTATTR_NAMESPACE_USER_STRING ;
 int errno ;
 char* strdup (int ) ;

int
extattr_namespace_to_string(int attrnamespace, char **string)
{

 switch(attrnamespace) {
 case 128:
  if (string != ((void*)0))
   *string = strdup(EXTATTR_NAMESPACE_USER_STRING);
  return (0);

 case 129:
  if (string != ((void*)0))
   *string = strdup(EXTATTR_NAMESPACE_SYSTEM_STRING);
  return (0);

 default:
  errno = EINVAL;
  return (-1);
 }
}

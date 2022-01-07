
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;


 char* EXTATTR_NAMESPACE_SYSTEM_STRING ;

 char* EXTATTR_NAMESPACE_USER_STRING ;
 int bzero (char*,size_t) ;
 size_t snprintf (char*,size_t,char*,char const*,char const*,char const*,char const*) ;
 int * strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
zfs_create_attrname(int attrnamespace, const char *name, char *attrname,
    size_t size)
{
 const char *namespace, *prefix, *suffix;


 if (strchr(name, '/') != ((void*)0))
  return (EINVAL);

 if (strncmp(name, "freebsd:", 8) == 0)
  return (EINVAL);

 bzero(attrname, size);

 switch (attrnamespace) {
 case 128:
  prefix = namespace = suffix = "";

  break;
 case 129:
  prefix = "freebsd:";
  namespace = EXTATTR_NAMESPACE_SYSTEM_STRING;
  suffix = ":";
  break;
 case 130:
 default:
  return (EINVAL);
 }
 if (snprintf(attrname, size, "%s%s%s%s", prefix, namespace, suffix,
     name) >= size) {
  return (ENAMETOOLONG);
 }
 return (0);
}

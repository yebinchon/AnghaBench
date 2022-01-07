
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int CAP_SYSCTL_RDWR ;
 int CAP_SYSCTL_RECURSIVE ;
 int EINVAL ;
 unsigned int HAS_ID ;
 unsigned int HAS_MIB ;
 unsigned int HAS_NAME ;
 unsigned int HAS_OPERATION ;
 int NV_TYPE_BINARY ;
 int NV_TYPE_NUMBER ;
 int NV_TYPE_STRING ;
 int cnvlist_get_binary (void*,size_t*) ;
 int cnvlist_get_number (void*) ;
 int nvlist_error (int const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
sysctl_valid(const nvlist_t *nvl, bool limit)
{
 const char *name;
 void *cookie;
 int type;
 size_t size;
 unsigned int field, fields;


 if (nvl == ((void*)0))
  return (EINVAL);
 if (nvlist_error(nvl) != 0)
  return (nvlist_error(nvl));






 fields = 0;
 cookie = ((void*)0);
 while ((name = nvlist_next(nvl, &type, &cookie)) != ((void*)0)) {
  if ((strcmp(name, "name") == 0 && type == NV_TYPE_STRING) ||
      (strcmp(name, "mib") == 0 && type == NV_TYPE_BINARY)) {
   if (strcmp(name, "mib") == 0) {

    (void)cnvlist_get_binary(cookie, &size);
    if (size % sizeof(int) != 0)
     return (EINVAL);
    field = 0x02;
   } else
    field = 0x01;




   if ((fields & field) != 0 ||
       (!limit && (fields & (0x01 | 0x02)) != 0))
    return (EINVAL);
   fields |= field;
  } else if (strcmp(name, "operation") == 0) {
   uint64_t mask, operation;

   if (type != NV_TYPE_NUMBER)
    return (EINVAL);

   operation = cnvlist_get_number(cookie);





   mask = limit ? (CAP_SYSCTL_RDWR |
       CAP_SYSCTL_RECURSIVE) : CAP_SYSCTL_RDWR;
   if ((operation & ~mask) != 0 ||
       (operation & CAP_SYSCTL_RDWR) == 0)
    return (EINVAL);

   if ((fields & 0x04) != 0)
    return (EINVAL);
   fields |= 0x04;
  } else if (limit)
   return (EINVAL);
 }

 if ((fields & 0x04) == 0 || (fields & (0x01 | 0x02)) == 0)
  return (EINVAL);






 return (0);
}

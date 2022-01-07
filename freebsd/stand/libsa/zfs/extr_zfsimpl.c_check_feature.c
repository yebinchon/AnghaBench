
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int EIO ;
 int ** features_for_read ;
 int printf (char*,char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
check_feature(const char *name, uint64_t value)
{
 int i;

 if (value == 0)
  return (0);
 if (name[0] == '\0')
  return (0);

 for (i = 0; features_for_read[i] != ((void*)0); i++) {
  if (strcmp(name, features_for_read[i]) == 0)
   return (0);
 }
 printf("ZFS: unsupported feature: %s\n", name);
 return (EIO);
}

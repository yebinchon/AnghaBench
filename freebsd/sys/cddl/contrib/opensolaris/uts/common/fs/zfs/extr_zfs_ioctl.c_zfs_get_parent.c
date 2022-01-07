
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
zfs_get_parent(const char *datasetname, char *parent, int parentsize)
{
 char *cp;




 (void) strncpy(parent, datasetname, parentsize);
 cp = strrchr(parent, '@');
 if (cp != ((void*)0)) {
  cp[0] = '\0';
 } else {
  cp = strrchr(parent, '/');
  if (cp == ((void*)0))
   return (SET_ERROR(ENOENT));
  cp[0] = '\0';
 }

 return (0);
}

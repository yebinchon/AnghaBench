
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;


 int errno ;
 int free (char*) ;
 char* malloc (int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 size_t strcspn (char const*,char*) ;
 int strlen (char const*) ;
 int sysctlnametomib (char*,int*,size_t*) ;

int
mac_is_present(const char *policyname)
{
 int mib[5];
 size_t siz;
 char *mibname;
 int error;

 if (policyname != ((void*)0)) {
  if (policyname[strcspn(policyname, ".=")] != '\0') {
   errno = EINVAL;
   return (-1);
  }
  mibname = malloc(sizeof("security.mac.") - 1 +
      strlen(policyname) + sizeof(".enabled"));
  if (mibname == ((void*)0))
   return (-1);
  strcpy(mibname, "security.mac.");
  strcat(mibname, policyname);
  strcat(mibname, ".enabled");
  siz = 5;
  error = sysctlnametomib(mibname, mib, &siz);
  free(mibname);
 } else {
  siz = 3;
  error = sysctlnametomib("security.mac", mib, &siz);
 }
 if (error == -1) {
  switch (errno) {
  case 128:
  case 129:
   return (0);
  default:
   return (error);
  }
 }
 return (1);
}

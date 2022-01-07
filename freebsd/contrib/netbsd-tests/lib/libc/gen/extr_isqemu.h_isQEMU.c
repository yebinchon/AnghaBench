
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 scalar_t__ ENOENT ;
 int EXIT_FAILURE ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 int * strstr (char*,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static __inline bool
isQEMU(void) {
 char name[1024];
 size_t len = sizeof(name);

 if (sysctlbyname("machdep.cpu_brand", name, &len, ((void*)0), 0) == -1) {
  if (errno == ENOENT)
   return 0;
  err(EXIT_FAILURE, "sysctl");
 }
 return strstr(name, "QEMU") != ((void*)0);




}

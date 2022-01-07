
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int paths ;
typedef int name ;


 int EXIT_FAILURE ;
 int MAXPATHLEN ;
 int bzero (char*,int) ;
 char* class_name ;
 int err (int ,char*) ;
 scalar_t__ modfind (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strtok (char*,char*) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
std_load_available(void)
{
 char name[MAXPATHLEN], paths[MAXPATHLEN * 8], *p;
 struct stat sb;
 size_t len;

 snprintf(name, sizeof(name), "g_%s", class_name);



 if (modfind(name) >= 0)
  return (0);
 bzero(paths, sizeof(paths));
 len = sizeof(paths);
 if (sysctlbyname("kern.module_path", paths, &len, ((void*)0), 0) < 0)
  err(EXIT_FAILURE, "sysctl(kern.module_path)");
 for (p = strtok(paths, ";"); p != ((void*)0); p = strtok(((void*)0), ";")) {
  snprintf(name, sizeof(name), "%s/geom_%s.ko", p, class_name);



  if (stat(name, &sb) == 0)
   return (1);
 }
 return (0);
}

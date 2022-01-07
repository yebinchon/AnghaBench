
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;


 struct passwd* getpwuid (int ) ;
 int getuid () ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static const char *
_default_history_file(void)
{
 struct passwd *p;
 static char *path;
 size_t len;

 if (path)
  return path;

 if ((p = getpwuid(getuid())) == ((void*)0))
  return ((void*)0);

 len = strlen(p->pw_dir) + sizeof("/.history");
 if ((path = malloc(len)) == ((void*)0))
  return ((void*)0);

 (void)snprintf(path, len, "%s/.history", p->pw_dir);
 return path;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TTY_IFCONSOLE ;
 int TTY_ON ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
auto_tty_status(const char *ty_name)
{
 size_t len;
 char *buf, *cons, *nextcons;
 int rv;

 rv = TTY_IFCONSOLE;


 buf = ((void*)0);
 if (sysctlbyname("kern.console", ((void*)0), &len, ((void*)0), 0) == -1)
  return (rv);
 buf = malloc(len);
 if (sysctlbyname("kern.console", buf, &len, ((void*)0), 0) == -1)
  goto done;

 if ((cons = strchr(buf, '/')) == ((void*)0))
  goto done;
 *cons = '\0';
 nextcons = buf;
 while ((cons = strsep(&nextcons, ",")) != ((void*)0) && strlen(cons) != 0) {
  if (strcmp(cons, ty_name) == 0) {
   rv |= TTY_ON;
   break;
  }
 }

done:
 free(buf);
 return (rv);
}

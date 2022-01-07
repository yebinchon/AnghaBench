
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int freeenv (char*) ;
 scalar_t__ isspace (char) ;
 char* kern_getenv (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
acpi_disabled(char *subsys)
{
    char *cp, *env;
    int len;

    if ((env = kern_getenv("debug.acpi.disabled")) == ((void*)0))
 return (0);
    if (strcmp(env, "all") == 0) {
 freeenv(env);
 return (1);
    }


    cp = env;
    for (;;) {
 while (*cp != '\0' && isspace(*cp))
     cp++;
 if (*cp == '\0')
     break;
 len = 0;
 while (cp[len] != '\0' && !isspace(cp[len]))
     len++;
 if (strncmp(cp, subsys, len) == 0) {
     freeenv(env);
     return (1);
 }
 cp += len;
    }
    freeenv(env);

    return (0);
}

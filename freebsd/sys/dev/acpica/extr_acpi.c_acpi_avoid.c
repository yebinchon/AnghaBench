
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_HANDLE ;


 char* acpi_name (int ) ;
 int freeenv (char*) ;
 scalar_t__ isspace (char) ;
 char* kern_getenv (char*) ;
 int strncmp (char*,char*,int) ;

int
acpi_avoid(ACPI_HANDLE handle)
{
    char *cp, *env, *np;
    int len;

    np = acpi_name(handle);
    if (*np == '\\')
 np++;
    if ((env = kern_getenv("debug.acpi.avoid")) == ((void*)0))
 return (0);


    cp = env;
    for (;;) {
 while (*cp != 0 && isspace(*cp))
     cp++;
 if (*cp == 0)
     break;
 len = 0;
 while (cp[len] != 0 && !isspace(cp[len]))
     len++;
 if (!strncmp(cp, np, len)) {
     freeenv(env);
     return(1);
 }
 cp += len;
    }
    freeenv(env);

    return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static void
getnewbasename(char **newbasename, int typedefp, const char *basename, const char *name)
{
    if (typedefp)
 *newbasename = strdup(name);
    else {
 if (name[0] == '*')
     name++;
 if (asprintf(newbasename, "%s_%s", basename, name) < 0)
     errx(1, "malloc");
    }
    if (*newbasename == ((void*)0))
 err(1, "malloc");
}

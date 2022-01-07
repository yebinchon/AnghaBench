
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct manpaths {size_t sz; int * paths; } ;


 int MANDOCERR_BADARG_BAD ;
 int PATH_MAX ;
 int errno ;
 int mandoc_msg (int ,int ,int ,char*,char,char const*,int ) ;
 int * mandoc_reallocarray (int *,int,int) ;
 int mandoc_strdup (char*) ;
 char* realpath (char const*,char*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strerror (int ) ;

__attribute__((used)) static void
manpath_add(struct manpaths *dirs, const char *dir, char option)
{
 char buf[PATH_MAX];
 struct stat sb;
 char *cp;
 size_t i;

 if ((cp = realpath(dir, buf)) == ((void*)0))
  goto fail;

 for (i = 0; i < dirs->sz; i++)
  if (strcmp(dirs->paths[i], dir) == 0)
   return;

 if (stat(cp, &sb) == -1)
  goto fail;

 dirs->paths = mandoc_reallocarray(dirs->paths,
     dirs->sz + 1, sizeof(*dirs->paths));
 dirs->paths[dirs->sz++] = mandoc_strdup(cp);
 return;

fail:
 if (option != '\0')
  mandoc_msg(MANDOCERR_BADARG_BAD, 0, 0,
      "-%c %s: %s", option, dir, strerror(errno));
}

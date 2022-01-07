
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moduledir {char const* d_path; } ;


 char* malloc (scalar_t__) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
moduledir_fullpath(struct moduledir *mdp, const char *fname)
{
 char *cp;

 cp = malloc(strlen(mdp->d_path) + strlen(fname) + 2);
 if (cp == ((void*)0))
  return ((void*)0);
 strcpy(cp, mdp->d_path);
 strcat(cp, "/");
 strcat(cp, fname);
 return (cp);
}

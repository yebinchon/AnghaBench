
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direct {scalar_t__ d_ino; } ;
typedef scalar_t__ ino_t ;


 scalar_t__ TSTINO (scalar_t__,int ) ;
 int dumpmap ;
 int fprintf (int ,char*,char const*) ;
 struct direct* pathsearch (char const*) ;
 int stderr ;

ino_t
dirlookup(const char *name)
{
 struct direct *dp;
 ino_t ino;

 ino = ((dp = pathsearch(name)) == ((void*)0)) ? 0 : dp->d_ino;

 if (ino == 0 || TSTINO(ino, dumpmap) == 0)
  fprintf(stderr, "%s is not on the tape\n", name);
 return (ino);
}

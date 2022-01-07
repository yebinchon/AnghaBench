
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ ino_t ;


 long FAIL ;
 long GOOD ;
 int LEAF ;
 scalar_t__ TSTINO (scalar_t__,int ) ;
 int dumpmap ;
 int fprintf (int ,char*,int ,char*) ;
 scalar_t__ hflag ;
 int stdout ;
 int vprintf (int ,char*,char*) ;

long
listfile(char *name, ino_t ino, int type)
{
 long descend = hflag ? GOOD : FAIL;

 if (TSTINO(ino, dumpmap) == 0)
  return (descend);
 vprintf(stdout, "%s", type == LEAF ? "leaf" : "dir ");
 fprintf(stdout, "%10ju\t%s\n", (uintmax_t)ino, name);
 return (descend);
}

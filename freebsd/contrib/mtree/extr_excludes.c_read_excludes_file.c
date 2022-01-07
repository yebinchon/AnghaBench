
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {char* glob; int pathname; } ;
typedef int FILE ;


 int FPARSELN_UNESCCOMM ;
 int FPARSELN_UNESCCONT ;
 int FPARSELN_UNESCESC ;
 int LIST_INSERT_HEAD (int *,struct exclude*,int ) ;
 int err (int,char*,char const*) ;
 int excludes ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 char* fparseln (int *,int *,int *,int *,int) ;
 int link ;
 struct exclude* malloc (int) ;
 int mtree_err (char*) ;
 int * strchr (char*,char) ;

void
read_excludes_file(const char *name)
{
 FILE *fp;
 char *line;
 struct exclude *e;

 fp = fopen(name, "r");
 if (fp == 0)
  err(1, "%s", name);

 while ((line = fparseln(fp, ((void*)0), ((void*)0), ((void*)0),
     FPARSELN_UNESCCOMM | FPARSELN_UNESCCONT | FPARSELN_UNESCESC))
     != ((void*)0)) {
  if (line[0] == '\0')
   continue;

  if ((e = malloc(sizeof *e)) == ((void*)0))
   mtree_err("memory allocation error");

  e->glob = line;
  if (strchr(e->glob, '/') != ((void*)0))
   e->pathname = 1;
  else
   e->pathname = 0;
  LIST_INSERT_HEAD(&excludes, e, link);
 }
 fclose(fp);
}

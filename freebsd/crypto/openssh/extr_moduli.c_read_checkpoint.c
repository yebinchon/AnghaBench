
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,unsigned long*) ;
 int logit (char*,char*,...) ;

__attribute__((used)) static unsigned long
read_checkpoint(char *cpfile)
{
 FILE *fp;
 unsigned long lineno = 0;

 if ((fp = fopen(cpfile, "r")) == ((void*)0))
  return 0;
 if (fscanf(fp, "%lu\n", &lineno) < 1)
  logit("Failed to load checkpoint from '%s'", cpfile);
 else
  logit("Loaded checkpoint from '%s' line %lu", cpfile, lineno);
 fclose(fp);
 return lineno;
}

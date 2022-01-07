
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgread (int *) ;
 int disk ;
 int dumpfreespacecg (int) ;
 int ufserr (char const*) ;

__attribute__((used)) static int
dumpfreespace(const char *name, int fflag)
{
 int i;

 while ((i = cgread(&disk)) != 0) {
  if (i == -1)
   goto err;
  dumpfreespacecg(fflag);
 }
 return (0);
err:
 ufserr(name);
 return (1);
}

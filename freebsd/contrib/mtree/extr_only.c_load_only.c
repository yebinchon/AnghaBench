
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int FPARSELN_UNESCALL ;
 int err (int,char*,char const*) ;
 int fclose (int *) ;
 int fill (char*) ;
 int * fopen (char const*,char*) ;
 char* fparseln (int *,size_t*,size_t*,int *,int ) ;
 int free (char*) ;
 scalar_t__ hash_find (char*,int *) ;
 int hash_insert (char*,int ) ;
 int loaded ;

void
load_only(const char *fname)
{
 FILE *fp;
 char *line;
 size_t len, lineno;

 if ((fp = fopen(fname, "r")) == ((void*)0))
  err(1, "Cannot open `%s'", fname);

 while ((line = fparseln(fp, &len, &lineno, ((void*)0), FPARSELN_UNESCALL))) {
  uint32_t h;
  if (hash_find(line, &h))
   err(1, "Duplicate entry %s", line);
  hash_insert(line, h);
  fill(line);
  free(line);
 }

 fclose(fp);
 loaded = 1;
}

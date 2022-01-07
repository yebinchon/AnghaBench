
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int WS ;
 int err (int,char*,char const*) ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char const*,char*) ;
 int hosts ;
 int sl_add (int ,int ) ;
 int strdup (char*) ;
 char* strtok (char*,int ) ;

__attribute__((used)) static void
load(const char *fname)
{
 FILE *fp;
 size_t len;
 char *line;

 if ((fp = fopen(fname, "r")) == ((void*)0))
  err(1, "Cannot open `%s'", fname);
 while ((line = fgetln(fp, &len)) != ((void*)0)) {
  char c = line[len];
  char *ptr;
  line[len] = '\0';
  for (ptr = strtok(line, WS); ptr; ptr = strtok(((void*)0), WS))
   sl_add(hosts, strdup(ptr));
  line[len] = c;
 }

 (void)fclose(fp);
}

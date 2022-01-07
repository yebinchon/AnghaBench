
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 int EX_NOINPUT ;
 int err (int ,char*,char const*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (int) ;
 scalar_t__ parse (char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
parsefile(const char *filename)
{
 FILE *file;
 char line[BUFSIZ], *p, *pq, *pdq;
 int warncount = 0, lineno = 0;

 file = fopen(filename, "r");
 if (file == ((void*)0))
  err(EX_NOINPUT, "%s", filename);
 while (fgets(line, sizeof(line), file) != ((void*)0)) {
  lineno++;
  p = line;
  pq = strchr(line, '\'');
  pdq = strchr(line, '\"');

  while((p = strchr(p, '#')) != ((void*)0)) {
   if (pq != ((void*)0) && p > pq) {
    if ((p = strchr(pq+1, '\'')) != ((void*)0))
     *(++p) = '\0';
    break;
   } else if (pdq != ((void*)0) && p > pdq) {
    if ((p = strchr(pdq+1, '\"')) != ((void*)0))
     *(++p) = '\0';
    break;
   } else if (p == line || *(p-1) != '\\') {
    *p = '\0';
    break;
   }
   p++;
  }

  p = line + strlen(line) - 1;
  while (p >= line && isspace((int)*p)) {
   *p = '\0';
   p--;
  }
  p = line;
  while (isspace((int)*p))
   p++;
  if (*p == '\0')
   continue;
  else
   warncount += parse(p, lineno);
 }
 fclose(file);

 return (warncount);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAXPATHLEN ;
 int add_dir (char const*,char*,int ) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (char) ;
 char* strdup (char*) ;
 int warnx (char*,char const*,int) ;

__attribute__((used)) static void
read_dirs_from_file(const char *hintsfile, const char *listfile)
{
 FILE *fp;
 char buf[MAXPATHLEN];
 int linenum;

 if ((fp = fopen(listfile, "r")) == ((void*)0))
  err(1, "%s", listfile);

 linenum = 0;
 while (fgets(buf, sizeof buf, fp) != ((void*)0)) {
  char *cp, *sp;

  linenum++;
  cp = buf;

  while (isspace(*cp))
   cp++;
  if (*cp == '#' || *cp == '\0')
   continue;
  sp = cp;

  while (!isspace(*cp) && *cp != '\0')
   cp++;

  if (*cp != '\0') {
   *cp++ = '\0';
   while (isspace(*cp))
    cp++;
  }

  if (*cp != '\0')
   warnx("%s:%d: trailing characters ignored",
       listfile, linenum);

  if ((sp = strdup(sp)) == ((void*)0))
   errx(1, "Out of memory");
  add_dir(hintsfile, sp, 0);
 }

 fclose(fp);
}

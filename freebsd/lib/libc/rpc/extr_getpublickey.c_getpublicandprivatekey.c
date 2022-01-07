
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 char* PKFILE ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 char* strsep (char**,char*) ;
 int yp_get_default_domain (char**) ;
 int yp_match (char*,char*,char const*,int ,char**,int*) ;

int
getpublicandprivatekey(const char *key, char *ret)
{
 char buf[1024];
 char *res;
 FILE *fd;
 char *mkey;
 char *mval;

 fd = fopen(PKFILE, "r");
 if (fd == ((void*)0))
  return (0);
 for (;;) {
  res = fgets(buf, sizeof(buf), fd);
  if (res == ((void*)0)) {
   fclose(fd);
   return (0);
  }
  if (res[0] == '#')
   continue;
  else if (res[0] == '+') {
   continue;

  } else {
   mkey = strsep(&res, "\t ");
   if (mkey == ((void*)0)) {
    fprintf(stderr,
    "Bad record in %s -- %s", PKFILE, buf);
    continue;
   }
   do {
    mval = strsep(&res, " \t#\n");
   } while (mval != ((void*)0) && !*mval);
   if (mval == ((void*)0)) {
    fprintf(stderr,
   "Bad record in %s val problem - %s", PKFILE, buf);
    continue;
   }
   if (strcmp(mkey, key) == 0) {
    strcpy(ret, mval);
    fclose(fd);
    return (1);
   }
  }
 }
}

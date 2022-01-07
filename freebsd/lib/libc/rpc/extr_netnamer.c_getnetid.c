
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int NETID ;
 char* NETIDFILE ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 int yp_get_default_domain (char**) ;
 int yp_match (char*,int ,char*,int ,char**,int*) ;

int
getnetid(char *key, char *ret)
{
 char buf[1024];
 char *res;
 char *mkey;
 char *mval;
 FILE *fd;






 int rv;

 rv = 0;

 fd = fopen(NETIDFILE, "r");
 if (fd == ((void*)0)) {




  return (0);

 }
 while (fd != ((void*)0)) {
  res = fgets(buf, sizeof(buf), fd);
  if (res == ((void*)0)) {
   rv = 0;
   goto done;
  }
  if (res[0] == '#')
   continue;
  else if (res[0] == '+') {
   continue;

  } else {
   mkey = strsep(&res, "\t ");
   if (mkey == ((void*)0)) {
    fprintf(stderr,
  "Bad record in %s -- %s", NETIDFILE, buf);
    continue;
   }
   do {
    mval = strsep(&res, " \t#\n");
   } while (mval != ((void*)0) && !*mval);
   if (mval == ((void*)0)) {
    fprintf(stderr,
  "Bad record in %s val problem - %s", NETIDFILE, buf);
    continue;
   }
   if (strcmp(mkey, key) == 0) {
    strcpy(ret, mval);
    rv = 1;
    goto done;
   }
  }
 }

done:
 if (fd != ((void*)0))
  fclose(fd);
 return (rv);
}

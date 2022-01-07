
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
canon(char *rawname, char *canonname, size_t len)
{
 char *cp, *np;

 if (strcmp(rawname, ".") == 0 || strncmp(rawname, "./", 2) == 0)
  (void) strcpy(canonname, "");
 else if (rawname[0] == '/')
  (void) strcpy(canonname, ".");
 else
  (void) strcpy(canonname, "./");
 if (strlen(canonname) + strlen(rawname) >= len) {
  fprintf(stderr, "canonname: not enough buffer space\n");
  done(1);
 }

 (void) strcat(canonname, rawname);



 for (cp = np = canonname; *np != '\0'; cp++) {
  *cp = *np++;
  while (*cp == '/' && *np == '/')
   np++;
 }
 *cp = '\0';
 if (*--cp == '/')
  *cp = '\0';



 for (np = canonname; *np != '\0'; ) {
  np++;
  cp = np;
  while (*np != '/' && *np != '\0')
   np++;
  if (np - cp == 1 && *cp == '.') {
   cp--;
   (void) strcpy(cp, np);
   np = cp;
  }
  if (np - cp == 2 && strncmp(cp, "..", 2) == 0) {
   cp--;
   while (cp > &canonname[1] && *--cp != '/')
                                ;
   (void) strcpy(cp, np);
   np = cp;
  }
 }
}

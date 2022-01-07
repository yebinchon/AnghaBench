
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int BSIZE ;
 int cgetclose () ;
 char** dbp ;
 int errno ;
 int fclose (int *) ;
 int ferror (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int getent (char**,int *,char**,int,char*,int ,int *) ;
 int gottoprec ;
 scalar_t__ isspace (unsigned char) ;
 int * pfp ;
 int slash ;
 char* toprec ;

int
cgetnext(char **bp, char **db_array)
{
 size_t len;
 int done, hadreaderr, savederrno, status;
 char *cp, *line, *rp, *np, buf[BSIZE], nbuf[BSIZE];
 u_int dummy;

 if (dbp == ((void*)0))
  dbp = db_array;

 if (pfp == ((void*)0) && (pfp = fopen(*dbp, "re")) == ((void*)0)) {
  (void)cgetclose();
  return (-1);
 }
 for (;;) {
  if (toprec && !gottoprec) {
   gottoprec = 1;
   line = toprec;
  } else {
   line = fgetln(pfp, &len);
   if (line == ((void*)0) && pfp) {
    hadreaderr = ferror(pfp);
    if (hadreaderr)
     savederrno = errno;
    fclose(pfp);
    pfp = ((void*)0);
    if (hadreaderr) {
     cgetclose();
     errno = savederrno;
     return (-1);
    } else {
     if (*++dbp == ((void*)0)) {
      (void)cgetclose();
      return (0);
     } else if ((pfp =
         fopen(*dbp, "re")) == ((void*)0)) {
      (void)cgetclose();
      return (-1);
     } else
      continue;
    }
   } else
    line[len - 1] = '\0';
   if (len == 1) {
    slash = 0;
    continue;
   }
   if (isspace((unsigned char)*line) ||
       *line == ':' || *line == '#' || slash) {
    if (line[len - 2] == '\\')
     slash = 1;
    else
     slash = 0;
    continue;
   }
   if (line[len - 2] == '\\')
    slash = 1;
   else
    slash = 0;
  }





  done = 0;
  np = nbuf;
  for (;;) {
   for (cp = line; *cp != '\0'; cp++) {
    if (*cp == ':') {
     *np++ = ':';
     done = 1;
     break;
    }
    if (*cp == '\\')
     break;
    *np++ = *cp;
   }
   if (done) {
    *np = '\0';
    break;
   } else {
    line = fgetln(pfp, &len);
    if (line == ((void*)0) && pfp) {

     hadreaderr = ferror(pfp);
     if (hadreaderr)
      savederrno = errno;
     fclose(pfp);
     pfp = ((void*)0);
     if (hadreaderr) {
      cgetclose();
      errno = savederrno;
      return (-1);
     } else {
      cgetclose();
      return (-1);
     }
    } else
     line[len - 1] = '\0';
   }
  }
  rp = buf;
  for(cp = nbuf; *cp != '\0'; cp++)
   if (*cp == '|' || *cp == ':')
    break;
   else
    *rp++ = *cp;

  *rp = '\0';
  status = getent(bp, &dummy, db_array, -1, buf, 0, ((void*)0));
  if (status == -2 || status == -3)
   (void)cgetclose();

  return (status + 1);
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int tmp ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 scalar_t__ EOF ;
 int LOG_ERR ;
 int LOG_INFO ;
 int MAXPATHLEN ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int fflush (int ) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fputs (char*,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int stdout ;
 char* strerror (scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 int syslog (int ,char*,char const*,...) ;

__attribute__((used)) static int
check_luser(const char *luserdir, char *l_user)
{
 FILE *f;
 int n;
 char tmp[MAXPATHLEN];

 n = snprintf(tmp, sizeof(tmp), "%s/%s", luserdir, l_user);
 if (n < 0 || (u_int)n >= sizeof(tmp)) {
  syslog(LOG_ERR, "provided banned directory line too long (%s)",
      luserdir);
  return (0);
 }
 if ((f = fopen(tmp, "r")) == ((void*)0)) {
  if (errno == ENOENT) {




   return (1);
  } else {





   syslog(LOG_ERR, "cannot open banned file %s (%s)",
       tmp, strerror(errno));
   return (0);
  }
 } else {




  syslog(LOG_INFO, "denied access to %s: %s exists",
      l_user, tmp);


  strlcpy(tmp, "\n\n-**- Sorry, you have been banned! -**-\n\n",
      sizeof(tmp));
  while (fputs(tmp, stdout) != EOF && !feof(f)) {
   if (fgets(tmp, sizeof(tmp), f) == ((void*)0)) {
    fflush(stdout);
    fclose(f);
    return (0);
   }
  }
  fclose(f);
 }
 fflush(stdout);
 return (0);
}

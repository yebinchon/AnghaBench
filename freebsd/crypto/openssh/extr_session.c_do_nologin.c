
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct passwd {scalar_t__ pw_uid; int pw_name; } ;
typedef int buf ;
typedef int FILE ;


 char* _PATH_NOLOGIN ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fputs (char*,int ) ;
 int lc ;
 scalar_t__ login_getcapbool (int ,char*,int ) ;
 char* login_getcapstr (int ,char*,char*,char*) ;
 int logit (char*,int ,char const*) ;
 int stat (char const*,struct stat*) ;
 int stderr ;

__attribute__((used)) static void
do_nologin(struct passwd *pw)
{
 FILE *f = ((void*)0);
 const char *nl;
 char buf[1024], *def_nl = _PATH_NOLOGIN;
 struct stat sb;






 if (pw->pw_uid == 0)
  return;
 nl = def_nl;

 if (stat(nl, &sb) == -1)
  return;


 logit("User %.100s not allowed because %s exists", pw->pw_name, nl);
 if ((f = fopen(nl, "r")) != ((void*)0)) {
  while (fgets(buf, sizeof(buf), f))
   fputs(buf, stderr);
  fclose(f);
 }
 exit(254);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {char** p; int psz; } ;
typedef int ssize_t ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int MAN_DIR ;
 int exit (int ) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 char** mandoc_realloc (char**,int) ;
 int pg_error_internal () ;
 int * strchr (char*,char) ;
 int validate_urifrag (char*) ;
 int warn (char*,int ) ;
 int warnx (char*,int ,...) ;

__attribute__((used)) static void
parse_manpath_conf(struct req *req)
{
 FILE *fp;
 char *dp;
 size_t dpsz;
 ssize_t len;

 if ((fp = fopen("manpath.conf", "r")) == ((void*)0)) {
  warn("%s/manpath.conf", MAN_DIR);
  pg_error_internal();
  exit(EXIT_FAILURE);
 }

 dp = ((void*)0);
 dpsz = 0;

 while ((len = getline(&dp, &dpsz, fp)) != -1) {
  if (dp[len - 1] == '\n')
   dp[--len] = '\0';
  req->p = mandoc_realloc(req->p,
      (req->psz + 1) * sizeof(char *));
  if ( ! validate_urifrag(dp)) {
   warnx("%s/manpath.conf contains "
       "unsafe path \"%s\"", MAN_DIR, dp);
   pg_error_internal();
   exit(EXIT_FAILURE);
  }
  if (strchr(dp, '/') != ((void*)0)) {
   warnx("%s/manpath.conf contains "
       "path with slash \"%s\"", MAN_DIR, dp);
   pg_error_internal();
   exit(EXIT_FAILURE);
  }
  req->p[req->psz++] = dp;
  dp = ((void*)0);
  dpsz = 0;
 }
 free(dp);

 if (req->p == ((void*)0)) {
  warnx("%s/manpath.conf is empty", MAN_DIR);
  pg_error_internal();
  exit(EXIT_FAILURE);
 }
}

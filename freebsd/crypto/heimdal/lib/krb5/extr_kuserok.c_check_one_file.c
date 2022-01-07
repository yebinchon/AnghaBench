
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; } ;
struct passwd {scalar_t__ pw_uid; } ;
typedef int krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_boolean ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int EACCES ;
 int EISDIR ;
 int EOF ;
 int FALSE ;
 scalar_t__ S_ISDIR (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int errno ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_parse_name (int ,char*,int *) ;
 int krb5_principal_compare (int ,int ,int ) ;
 int rk_cloexec_file (int *) ;
 int strcspn (char*,char*) ;

__attribute__((used)) static krb5_error_code
check_one_file(krb5_context context,
        const char *filename,
        struct passwd *pwd,
        krb5_principal principal,
        krb5_boolean *result)
{
    FILE *f;
    char buf[BUFSIZ];
    krb5_error_code ret;
    struct stat st;

    *result = FALSE;

    f = fopen (filename, "r");
    if (f == ((void*)0))
 return errno;
    rk_cloexec_file(f);


    if (fstat(fileno(f), &st) != 0) {
 fclose (f);
 return errno;
    }
    if (S_ISDIR(st.st_mode)) {
 fclose (f);
 return EISDIR;
    }
    if (st.st_uid != pwd->pw_uid && st.st_uid != 0) {
 fclose (f);
 return EACCES;
    }
    if ((st.st_mode & (S_IWGRP | S_IWOTH)) != 0) {
 fclose (f);
 return EACCES;
    }

    while (fgets (buf, sizeof(buf), f) != ((void*)0)) {
 krb5_principal tmp;
 char *newline = buf + strcspn(buf, "\n");

 if(*newline != '\n') {
     int c;
     c = fgetc(f);
     if(c != EOF) {
  while(c != EOF && c != '\n')
      c = fgetc(f);

  continue;
     }
 }
 *newline = '\0';
 ret = krb5_parse_name (context, buf, &tmp);
 if (ret)
     continue;
 *result = krb5_principal_compare (context, principal, tmp);
 krb5_free_principal (context, tmp);
 if (*result) {
     fclose (f);
     return 0;
 }
    }
    fclose (f);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 int crypt_set_format (char const*) ;
 int fprintf (int ,char*,char const*) ;
 int * getenv (char*) ;
 char* login_getcapstr (int *,char*,char const*,int *) ;
 int stderr ;

const char *
login_setcryptfmt(login_cap_t *lc, const char *def, const char *error) {
 const char *cipher;

 cipher = login_getcapstr(lc, "passwd_format", def, ((void*)0));
 if (getenv("CRYPT_DEBUG") != ((void*)0))
  fprintf(stderr, "login_setcryptfmt: "
      "passwd_format = %s\n", cipher);
 if (cipher == ((void*)0))
  return (error);
 if (!crypt_set_format(cipher))
  return (error);
 return (cipher);
}

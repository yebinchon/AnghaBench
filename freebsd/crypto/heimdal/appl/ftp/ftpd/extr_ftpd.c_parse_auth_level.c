
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTH_FTP ;
 int AUTH_OTP ;
 int AUTH_PLAIN ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok_r (char*,char*,char**) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
parse_auth_level(char *str)
{
    char *p;
    int ret = 0;
    char *foo = ((void*)0);

    for(p = strtok_r(str, ",", &foo);
 p;
 p = strtok_r(((void*)0), ",", &foo)) {
 if(strcmp(p, "user") == 0)
     ;




 else if(strcmp(p, "ftp") == 0 ||
  strcmp(p, "safe") == 0)
     ret |= AUTH_FTP;
 else if(strcmp(p, "plain") == 0)
     ret |= AUTH_PLAIN;
 else if(strcmp(p, "none") == 0)
     ret |= AUTH_PLAIN|AUTH_FTP;
 else
     warnx("bad value for -a: `%s'", p);
    }
    return ret;
}

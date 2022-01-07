
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int8_t ;


 char* optarg ;
 char pwd_opt ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int warnx (char*,char,...) ;

__attribute__((used)) static int
ata_getpwd(u_int8_t *passwd, int max, char opt)
{
 int len;

 len = strlen(optarg);
 if (len > max) {
  warnx("-%c password is too long", opt);
  return (1);
 } else if (len == 0) {
  warnx("-%c password is missing", opt);
  return (1);
 } else if (optarg[0] == '-'){
  warnx("-%c password starts with '-' (generic arg?)", opt);
  return (1);
 } else if (strlen(passwd) != 0 && strcmp(passwd, optarg) != 0) {
  warnx("-%c password conflicts with existing password from -%c",
        opt, pwd_opt);
  return (1);
 }


 strncpy(passwd, optarg, max);
 pwd_opt = opt;

 return (0);
}

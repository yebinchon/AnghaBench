
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char* pw_name; char* pw_passwd; int pw_fields; scalar_t__ pw_uid; scalar_t__ pw_gid; scalar_t__ pw_change; char* pw_class; char* pw_gecos; char* pw_dir; char* pw_shell; scalar_t__ pw_expire; } ;
typedef scalar_t__ gid_t ;


 unsigned int PW_CHANGE ;
 unsigned int PW_CLASS ;
 unsigned int PW_DIR ;
 unsigned int PW_EXPIRE ;
 unsigned int PW_GECOS ;
 unsigned int PW_GID ;
 unsigned int PW_NAME ;
 unsigned int PW_PASSWD ;
 unsigned int PW_SHELL ;
 unsigned int PW_UID ;
 int _PWF_CHANGE ;
 int _PWF_CLASS ;
 int _PWF_DIR ;
 int _PWF_EXPIRE ;
 int _PWF_GECOS ;
 int _PWF_PASSWD ;
 int _PWF_SHELL ;
 int printf (char*,...) ;

__attribute__((used)) static unsigned int
passwd_fields(const struct passwd *pwd)
{
 unsigned int result;

 result = 0;

 if (pwd->pw_name != ((void*)0) && pwd->pw_name[0] != '\0')
  result |= PW_NAME;



 if (pwd->pw_passwd != ((void*)0) && pwd->pw_passwd[0] != '\0')
  result |= PW_PASSWD;
 else if ((pwd->pw_fields & _PWF_PASSWD) != 0)
  result |= PW_PASSWD;



 if (pwd->pw_uid != (uid_t)-1)
  result |= PW_UID;



 if (pwd->pw_gid != (gid_t)-1)
  result |= PW_GID;



 if (pwd->pw_change != 0 || (pwd->pw_fields & _PWF_CHANGE) != 0)
  result |= PW_CHANGE;



 if (pwd->pw_class != ((void*)0) && pwd->pw_class[0] != '\0')
  result |= PW_CLASS;
 else if ((pwd->pw_fields & _PWF_CLASS) != 0)
  result |= PW_CLASS;



 if (pwd->pw_gecos != ((void*)0) && pwd->pw_gecos[0] != '\0')
  result |= PW_GECOS;
 else if ((pwd->pw_fields & _PWF_GECOS) != 0)
  result |= PW_GECOS;



 if (pwd->pw_dir != ((void*)0) && pwd->pw_dir[0] != '\0')
  result |= PW_DIR;
 else if ((pwd->pw_fields & _PWF_DIR) != 0)
  result |= PW_DIR;



 if (pwd->pw_shell != ((void*)0) && pwd->pw_shell[0] != '\0')
  result |= PW_SHELL;
 else if ((pwd->pw_fields & _PWF_SHELL) != 0)
  result |= PW_SHELL;



 if (pwd->pw_expire != 0 || (pwd->pw_fields & _PWF_EXPIRE) != 0)
  result |= PW_EXPIRE;



if (0 && pwd->pw_fields != (int)result) {
printf("fields=0x%x != result=0x%x\n", (const unsigned int)pwd->pw_fields, result);
printf("           fields result\n");
printf("PW_NAME    %d      %d\n", (pwd->pw_fields & PW_NAME) != 0, (result & PW_NAME) != 0);
printf("PW_PASSWD  %d      %d\n", (pwd->pw_fields & PW_PASSWD) != 0, (result & PW_PASSWD) != 0);
printf("PW_UID     %d      %d\n", (pwd->pw_fields & PW_UID) != 0, (result & PW_UID) != 0);
printf("PW_GID     %d      %d\n", (pwd->pw_fields & PW_GID) != 0, (result & PW_GID) != 0);
printf("PW_CHANGE  %d      %d\n", (pwd->pw_fields & PW_CHANGE) != 0, (result & PW_CHANGE) != 0);
printf("PW_CLASS   %d      %d\n", (pwd->pw_fields & PW_CLASS) != 0, (result & PW_CLASS) != 0);
printf("PW_GECOS   %d      %d\n", (pwd->pw_fields & PW_GECOS) != 0, (result & PW_GECOS) != 0);
printf("PW_DIR     %d      %d\n", (pwd->pw_fields & PW_DIR) != 0, (result & PW_DIR) != 0);
printf("PW_SHELL   %d      %d\n", (pwd->pw_fields & PW_SHELL) != 0, (result & PW_SHELL) != 0);
printf("PW_EXPIRE  %d      %d\n", (pwd->pw_fields & PW_EXPIRE) != 0, (result & PW_EXPIRE) != 0);
}


 return (result);
}

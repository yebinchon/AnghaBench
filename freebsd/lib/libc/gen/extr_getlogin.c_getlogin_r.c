
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpname ;


 int ERANGE ;
 int MAXLOGNAME ;
 scalar_t__ _getlogin (char*,int) ;
 int errno ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

int
getlogin_r(char *logname, int namelen)
{
 char tmpname[MAXLOGNAME];
 int len;

 if (namelen < 1)
  return (ERANGE);
 logname[0] = '\0';

 if (_getlogin(tmpname, sizeof(tmpname)) < 0)
  return (errno);
 len = strlen(tmpname) + 1;
 if (len > namelen)
  return (ERANGE);
 strlcpy(logname, tmpname, len);
 return (0);
}

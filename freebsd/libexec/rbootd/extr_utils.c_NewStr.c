
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 scalar_t__ malloc (unsigned int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int syslog (int ,char*,char*) ;

char *
NewStr(char *str)
{
 char *stmp;

 if ((stmp = (char *)malloc((unsigned) (strlen(str)+1))) == ((void*)0)) {
  syslog(LOG_ERR, "NewStr: out of memory (%s)", str);
  return(((void*)0));
 }

 (void) strcpy(stmp, str);
 return(stmp);
}

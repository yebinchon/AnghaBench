
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int errno ;
 scalar_t__ gethostname (char*,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

int
nb_getlocalname(char *name)
{
 char buf[1024], *cp;

 if (gethostname(buf, sizeof(buf)) != 0)
  return errno;
 cp = strchr(buf, '.');
 if (cp)
  *cp = 0;
 strcpy(name, buf);
 return 0;
}

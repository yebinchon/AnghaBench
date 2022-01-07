
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFCHR ;
 int S_IFMT ;
 scalar_t__ stat (char*,struct stat*) ;

char *
rawname(char *cp)
{
 struct stat sb;




 if (stat(cp, &sb) == 0 && (sb.st_mode & S_IFMT) == S_IFCHR)
  return (cp);





 return (((void*)0));
}

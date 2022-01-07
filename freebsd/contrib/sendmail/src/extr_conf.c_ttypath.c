
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IWOTH ;
 int bitset (int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ stat (char*,struct stat*) ;

char *
ttypath()
{
 struct stat stbuf;
 register char *pathn;
 extern char *ttyname();
 extern char *getlogin();


 if ((pathn = ttyname(2)) == ((void*)0) && (pathn = ttyname(1)) == ((void*)0) &&
     (pathn = ttyname(0)) == ((void*)0))
 {
  errno = 0;
  return ((void*)0);
 }


 if (stat(pathn, &stbuf) < 0 || !bitset(S_IWOTH, stbuf.st_mode))
 {
  errno = 0;
  return ((void*)0);
 }


 if (getlogin() == ((void*)0))
  return ((void*)0);


 return pathn;
}

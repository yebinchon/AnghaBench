
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int errno ;
 char* getcwd (char*,int ) ;
 int strerror_r (int ,char*,int ) ;

char *
getwd(char *buf)
{
 char *p;

 if ( (p = getcwd(buf, MAXPATHLEN)) )
  return(p);
 (void)strerror_r(errno, buf, MAXPATHLEN);
 return((char *)((void*)0));
}

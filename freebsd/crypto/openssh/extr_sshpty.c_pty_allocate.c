
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (char*,int ) ;
 int fatal (char*) ;
 int openpty (int*,int*,int *,int *,int *) ;
 int strerror (int ) ;
 int strlcpy (char*,char*,size_t) ;
 char* ttyname (int) ;

int
pty_allocate(int *ptyfd, int *ttyfd, char *namebuf, size_t namebuflen)
{

 char *name;
 int i;

 i = openpty(ptyfd, ttyfd, ((void*)0), ((void*)0), ((void*)0));
 if (i < 0) {
  error("openpty: %.100s", strerror(errno));
  return 0;
 }
 name = ttyname(*ttyfd);
 if (!name)
  fatal("openpty returns device for which ttyname fails.");

 strlcpy(namebuf, name, namebuflen);
 return 1;
}

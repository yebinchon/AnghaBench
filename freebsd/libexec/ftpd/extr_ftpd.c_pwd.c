
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAXPATHLEN ;
 char* doublequote (char*) ;
 int fatalerror (char*) ;
 int free (char*) ;
 int * getcwd (char*,int) ;
 int perror_reply (int,char*) ;
 int reply (int,char*,char*) ;

void
pwd(void)
{
 char *s, path[MAXPATHLEN + 1];

 if (getcwd(path, sizeof(path)) == ((void*)0))
  perror_reply(550, "Get current directory");
 else {
  if ((s = doublequote(path)) == ((void*)0))
   fatalerror("Ran out of memory.");
  reply(257, "\"%s\" is current directory.", s);
  free(s);
 }
}

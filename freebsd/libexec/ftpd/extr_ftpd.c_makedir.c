
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGCMD (char*,char*) ;
 char* doublequote (char*) ;
 int fatalerror (char*) ;
 int free (char*) ;
 scalar_t__ guest ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ noguestmkd ;
 int perror_reply (int,char*) ;
 int reply (int,char*,...) ;

void
makedir(char *name)
{
 char *s;

 LOGCMD("mkdir", name);
 if (guest && noguestmkd)
  reply(550, "Operation not permitted.");
 else if (mkdir(name, 0777) < 0)
  perror_reply(550, name);
 else {
  if ((s = doublequote(name)) == ((void*)0))
   fatalerror("Ran out of memory.");
  reply(257, "\"%s\" directory created.", s);
  free(s);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGCMD (char*,char*) ;
 int chmod (char*,int) ;
 scalar_t__ filename_check (char*) ;
 scalar_t__ guest ;
 scalar_t__ mkdir (char*,int) ;
 int perror_reply (int,char*) ;
 int reply (int,char*) ;

void
makedir(char *name)
{

 LOGCMD("mkdir", name);
 if(guest && filename_check(name))
     return;
 if (mkdir(name, 0777) < 0)
  perror_reply(550, name);
 else{
     if(guest)
  chmod(name, 0700);
     reply(257, "MKD command successful.");
 }
}

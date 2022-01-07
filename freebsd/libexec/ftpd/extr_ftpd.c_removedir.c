
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGCMD (char*,char*) ;
 int ack (char*) ;
 int perror_reply (int,char*) ;
 scalar_t__ rmdir (char*) ;

void
removedir(char *name)
{

 LOGCMD("rmdir", name);
 if (rmdir(name) < 0)
  perror_reply(550, name);
 else
  ack("RMD");
}

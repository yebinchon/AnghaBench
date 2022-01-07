
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int LOGCMD2 (char*,char*,char*) ;
 int ack (char*) ;
 scalar_t__ guest ;
 int perror_reply (int,char*) ;
 scalar_t__ rename (char*,char*) ;
 int reply (int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

void
renamecmd(char *from, char *to)
{
 struct stat st;

 LOGCMD2("rename", from, to);

 if (guest && (stat(to, &st) == 0)) {
  reply(550, "%s: permission denied.", to);
  return;
 }

 if (rename(from, to) < 0)
  perror_reply(550, "rename");
 else
  ack("RNTO");
}

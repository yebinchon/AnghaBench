
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGCMD2 (char*,char*,char*) ;
 int ack (char*) ;
 scalar_t__ filename_check (char*) ;
 scalar_t__ guest ;
 int perror_reply (int,char*) ;
 scalar_t__ rename (char*,char*) ;

void
renamecmd(char *from, char *to)
{

 LOGCMD2("rename", from, to);
 if(guest && filename_check(to))
     return;
 if (rename(from, to) < 0)
  perror_reply(550, "rename");
 else
  ack("RNTO");
}

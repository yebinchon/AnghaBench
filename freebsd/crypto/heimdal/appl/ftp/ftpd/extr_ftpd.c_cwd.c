
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ack (char*) ;
 scalar_t__ chdir (char const*) ;
 int perror_reply (int,char const*) ;

void
cwd(const char *path)
{

 if (chdir(path) < 0)
  perror_reply(550, path);
 else
  ack("CWD");
}

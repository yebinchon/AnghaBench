
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t WRITE_PIPE ;
 int err (int,char*) ;
 int * slvpipe ;
 int strlen (char const*) ;
 scalar_t__ write (int ,...) ;

__attribute__((used)) static void
report_message(int type, const char *status)
{
 int len;

 len = strlen(status);

 if (write(slvpipe[WRITE_PIPE], &type, sizeof(int)) < 0)
  err(1, "command pipe write for message type failed");

 if (write(slvpipe[WRITE_PIPE], &len, sizeof(int)) < 0)
  err(1, "command pipe write for message length failed");

 if (write(slvpipe[WRITE_PIPE], status, len) < 0)
  err(1, "command pipe write of message data failed");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_snprintf (char*,int,char*,char const*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int printf (char*) ;

int write_cmd(char *buf, size_t buflen, const char *cmd, int argc, char *argv[])
{
 int i, res;
 char *pos, *end;

 pos = buf;
 end = buf + buflen;

 res = os_snprintf(pos, end - pos, "%s", cmd);
 if (os_snprintf_error(end - pos, res))
  goto fail;
 pos += res;

 for (i = 0; i < argc; i++) {
  res = os_snprintf(pos, end - pos, " %s", argv[i]);
  if (os_snprintf_error(end - pos, res))
   goto fail;
  pos += res;
 }

 buf[buflen - 1] = '\0';
 return 0;

fail:
 printf("Too long command\n");
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t os_strlen (char const*) ;

__attribute__((used)) static int newline_terminated(const char *buf, size_t buflen)
{
 size_t len = os_strlen(buf);
 if (len == 0)
  return 0;
 if (len == buflen - 1 && buf[buflen - 1] != '\r' &&
     buf[len - 1] != '\n')
  return 0;
 return 1;
}

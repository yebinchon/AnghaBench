
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static int
str2int(const char **buf, int max)
{
 int ret=0, count=0;

 while (*buf[0] != '\0' && isdigit((unsigned char)*buf[0]) && count<max) {
  ret = ret*10 + (*buf[0] - '0');
  (*buf)++;
  count++;
 }

 if (!count)
  return -1;
 return ret;
}

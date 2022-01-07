
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
getcwd (char *buf, unsigned int len)
{
  buf[0] = '/';
  buf[1] = 0;
  return buf;
}

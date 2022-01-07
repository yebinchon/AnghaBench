
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,char*,int) ;

int
myread (int desc, char *addr, int len)
{
  int val;
  int orglen = len;

  while (len > 0)
    {
      val = read (desc, addr, len);
      if (val < 0)
 return val;
      if (val == 0)
 return orglen - len;
      len -= val;
      addr += val;
    }
  return orglen;
}

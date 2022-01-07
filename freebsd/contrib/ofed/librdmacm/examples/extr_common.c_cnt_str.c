
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,long long) ;

void cnt_str(char *str, size_t ssize, long long cnt)
{
 if (cnt >= 1000000000)
  snprintf(str, ssize, "%lldb", cnt / 1000000000);
 else if (cnt >= 1000000)
  snprintf(str, ssize, "%lldm", cnt / 1000000);
 else if (cnt >= 1000)
  snprintf(str, ssize, "%lldk", cnt / 1000);
 else
  snprintf(str, ssize, "%lld", cnt);
}

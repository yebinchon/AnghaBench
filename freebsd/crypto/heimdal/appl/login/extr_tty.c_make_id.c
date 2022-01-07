
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char*,char*,int) ;

char *
make_id (char *tty)
{
  char *res = tty;

  if (strncmp (res, "pts/", 4) == 0)
    res += 4;
  if (strncmp (res, "tty", 3) == 0)
    res += 3;
  return res;
}

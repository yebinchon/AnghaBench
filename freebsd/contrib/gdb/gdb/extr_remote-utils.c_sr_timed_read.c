
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char sr_readchar () ;

int
sr_timed_read (char *buf, int n)
{
  int i;
  char c;

  i = 0;
  while (i < n)
    {
      c = sr_readchar ();

      if (c == 0)
 return i;
      buf[i] = c;
      i++;

    }
  return i;
}

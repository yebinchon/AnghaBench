
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int fd; } ;


 int write (int ,char const*,int) ;

int
ser_unix_write (struct serial *scb, const char *str, int len)
{
  int cc;

  while (len > 0)
    {
      cc = write (scb->fd, str, len);

      if (cc < 0)
 return 1;
      len -= cc;
      str += cc;
    }
  return 0;
}

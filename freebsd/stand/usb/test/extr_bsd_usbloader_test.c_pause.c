
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int usleep (int) ;

int
pause(const char *what, int timeout)
{
 if (timeout == 0)
  timeout = 1;

 usleep((1000000 / hz) * timeout);

 return (0);
}

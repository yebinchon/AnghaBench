
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int rmtcall (char*,char*) ;
 int snprintf (char*,int,char*,int,int) ;

int
rmtioctl(int cmd, int count)
{
 char buf[256];

 if (count < 0)
  return (-1);
 (void)snprintf(buf, sizeof (buf), "I%d\n%d\n", cmd, count);
 return (rmtcall("ioctl", buf));
}

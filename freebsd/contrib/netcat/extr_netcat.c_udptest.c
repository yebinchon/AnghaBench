
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,int) ;

int
udptest(int s)
{
 int i, ret;

 for (i = 0; i <= 3; i++) {
  if (write(s, "X", 1) == 1)
   ret = 1;
  else
   ret = -1;
 }
 return (ret);
}

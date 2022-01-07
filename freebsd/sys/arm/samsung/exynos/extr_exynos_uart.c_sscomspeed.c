
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
sscomspeed(long speed, long frequency)
{
 int x;

 if (speed <= 0 || frequency <= 0)
  return (-1);
 x = (frequency / 16) / speed;
 return (x-1);
}

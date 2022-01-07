
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



int
ata_speed2revision(u_int speed)
{
 switch (speed) {
 case 0:
  return (0);
 case 150000:
  return (1);
 case 300000:
  return (2);
 case 600000:
  return (3);
 default:
  return (-1);
 }
}

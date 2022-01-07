
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



u_int
ata_revision2speed(int revision)
{
 switch (revision) {
 case 1:
 default:
  return (150000);
 case 2:
  return (300000);
 case 3:
  return (600000);
 }
}

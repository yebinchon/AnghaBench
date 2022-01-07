
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speed_t ;
__attribute__((used)) static int
speed_to_baud(speed_t speed)
{
 switch (speed) {
 case 152:
  return 0;
 case 136:
  return 50;
 case 132:
  return 75;
 case 151:
  return 110;
 case 148:
  return 134;
 case 146:
  return 150;
 case 143:
  return 200;
 case 139:
  return 300;
 case 134:
  return 600;
 case 149:
  return 1200;
 case 145:
  return 1800;
 case 141:
  return 2400;
 case 137:
  return 4800;
 case 130:
  return 9600;


 case 144:
  return 19200;
 case 138:
  return 38400;
 case 133:
  return 7200;


 case 147:
  return 14400;


 case 140:
  return 28800;


 case 135:
  return 57600;


 case 131:
  return 76800;


 case 150:
  return 115200;


 case 142:
  return 230400;

 default:
  return 9600;
 }
}

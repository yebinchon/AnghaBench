
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speed_t ;


 int B0 ;
 int B110 ;
 int B115200 ;
 int B1200 ;
 int B134 ;
 int B14400 ;
 int B150 ;
 int B1800 ;
 int B19200 ;
 int B200 ;
 int B230400 ;
 int B2400 ;
 int B28800 ;
 int B300 ;
 int B38400 ;
 int B4800 ;
 int B50 ;
 int B57600 ;
 int B600 ;
 int B7200 ;
 int B75 ;
 int B76800 ;
 int B9600 ;
 int EXTA ;
 int EXTB ;

__attribute__((used)) static speed_t
baud_to_speed(int baud)
{
 switch (baud) {
 case 0:
  return B0;
 case 50:
  return B50;
 case 75:
  return B75;
 case 110:
  return B110;
 case 134:
  return B134;
 case 150:
  return B150;
 case 200:
  return B200;
 case 300:
  return B300;
 case 600:
  return B600;
 case 1200:
  return B1200;
 case 1800:
  return B1800;
 case 2400:
  return B2400;
 case 4800:
  return B4800;
 case 9600:
  return B9600;
 default:
  return B9600;
 }
}

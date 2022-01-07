
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int time_t ;



__attribute__((used)) static int
au_timetosec(time_t *seconds, u_long value, char mult)
{
 if (((void*)0) == seconds)
  return (-1);

 switch(mult) {
 case 's':

  *seconds = (time_t)value;
  break;

 case 'h':

  *seconds = (time_t)value * 60 * 60;
  break;

 case 'd':

  *seconds = (time_t)value * 60 * 60 * 24;
  break;

 case 'y':

  *seconds = (time_t)value * 60 * 60 * 24 * 364 +
      ((time_t)value / 4) * 60 * 60 * 24;
  break;

 default:
  return (-1);
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMTICK ;
 long SPEED_TOLERANCE ;
 int divrnd (int,long) ;

__attribute__((used)) static int
dos_baudconv (int rate)
{
  long x, err;

  if (rate <= 0)
    return -1;


  x = (((COMTICK) * 2 / (rate) + 1) / 2);
  if (x <= 0)
    return -1;

  err = (((1000 * COMTICK) * 2 / (x * rate) + 1) / 2) - 1000;
  if (err < 0)
    err = -err;
  if (err > SPEED_TOLERANCE)
    return -1;

  return x;
}

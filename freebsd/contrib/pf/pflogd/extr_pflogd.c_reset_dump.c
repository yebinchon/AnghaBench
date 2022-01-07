
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int try_reset_dump (int) ;

int
reset_dump(int nomove)
{
 int ret;

 for (;;) {
  ret = try_reset_dump(nomove);
  if (ret <= 0)
   break;
 }

 return (ret);
}

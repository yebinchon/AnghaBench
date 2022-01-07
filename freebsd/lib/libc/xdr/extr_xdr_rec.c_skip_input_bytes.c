
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef long u_int32_t ;
typedef int bool_t ;
struct TYPE_4__ {scalar_t__ in_finger; scalar_t__ in_boundry; } ;
typedef TYPE_1__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 int fill_input_buf (TYPE_1__*) ;

__attribute__((used)) static bool_t
skip_input_bytes(RECSTREAM *rstrm, long cnt)
{
 u_int32_t current;

 while (cnt > 0) {
  current = (size_t)((long)rstrm->in_boundry -
      (long)rstrm->in_finger);
  if (current == 0) {
   if (! fill_input_buf(rstrm))
    return (FALSE);
   continue;
  }
  current = (u_int32_t)((cnt < current) ? cnt : current);
  rstrm->in_finger += current;
  cnt -= current;
 }
 return (TRUE);
}

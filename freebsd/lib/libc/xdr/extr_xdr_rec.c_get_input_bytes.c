
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_4__ {scalar_t__ in_finger; scalar_t__ in_boundry; scalar_t__ nonblock; } ;
typedef TYPE_1__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 int fill_input_buf (TYPE_1__*) ;
 int memcpy (char*,scalar_t__,size_t) ;
 int memmove (char*,scalar_t__,size_t) ;

__attribute__((used)) static bool_t
get_input_bytes(RECSTREAM *rstrm, char *addr, int len)
{
 size_t current;

 if (rstrm->nonblock) {
  if (len > (int)(rstrm->in_boundry - rstrm->in_finger))
   return FALSE;
  memcpy(addr, rstrm->in_finger, (size_t)len);
  rstrm->in_finger += len;
  return TRUE;
 }

 while (len > 0) {
  current = (size_t)((long)rstrm->in_boundry -
      (long)rstrm->in_finger);
  if (current == 0) {
   if (! fill_input_buf(rstrm))
    return (FALSE);
   continue;
  }
  current = (len < current) ? len : current;
  memmove(addr, rstrm->in_finger, current);
  rstrm->in_finger += current;
  addr += current;
  len -= current;
 }
 return (TRUE);
}

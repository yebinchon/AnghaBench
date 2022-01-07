
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ T ;
 scalar_t__* text_chars ;

int
looks_utf8(const char *ibuf, size_t nbytes)
{
 const u_char *buf = (u_char *)ibuf;
 size_t i;
 int n;
 int gotone = 0, ctrl = 0;

 for (i = 0; i < nbytes; i++) {
  if ((buf[i] & 0x80) == 0) {





   if (text_chars[buf[i]] != T)
    ctrl = 1;
  } else if ((buf[i] & 0x40) == 0) {
   return -1;
  } else {
   int following;

   if ((buf[i] & 0x20) == 0)
    if (buf[i] > 0xC1)
     following = 1;
    else return -1;
   else if ((buf[i] & 0x10) == 0)
    following = 2;
   else if ((buf[i] & 0x08) == 0)
    if (buf[i] < 0xF5)
     following = 3;
    else return -1;
   else
    return -1;

   for (n = 0; n < following; n++) {
    i++;
    if (i >= nbytes)
     goto done;

    if ((buf[i] & 0xc0) != 0x80)
     return -1;
   }

   gotone = 1;
  }
 }
done:
 return ctrl ? 0 : (gotone ? 2 : 1);
}

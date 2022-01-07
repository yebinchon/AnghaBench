
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keybuf ;


 int isgraph (char) ;
 int pcg32_random () ;

__attribute__((used)) static const char *
random_key (size_t *lenptr)
{
 static char keybuf[512];
 int keylen, i;
 char c;

 keylen = pcg32_random () % (sizeof (keybuf) - 1) + 1;

 for (i = 0; i < keylen; i ++) {
  do {
   c = pcg32_random () & 0xFF;
  } while (!isgraph (c));

  keybuf[i] = c;
 }

 *lenptr = keylen;
 return keybuf;
}

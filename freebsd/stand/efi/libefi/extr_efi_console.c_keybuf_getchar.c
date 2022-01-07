
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYBUFSZ ;
 int* keybuf ;

__attribute__((used)) static int
keybuf_getchar(void)
{
 int i, c = 0;

 for (i = 0; i < KEYBUFSZ; i++) {
  if (keybuf[i] != 0) {
   c = keybuf[i];
   keybuf[i] = 0;
   break;
  }
 }

 return (c);
}

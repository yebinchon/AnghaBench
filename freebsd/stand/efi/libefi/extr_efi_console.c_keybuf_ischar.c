
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYBUFSZ ;
 scalar_t__* keybuf ;

__attribute__((used)) static bool
keybuf_ischar(void)
{
 int i;

 for (i = 0; i < KEYBUFSZ; i++) {
  if (keybuf[i] != 0)
   return (1);
 }
 return (0);
}

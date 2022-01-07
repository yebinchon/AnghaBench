
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* partab ;

void
des_setparity(char *p)
{
 int i;

 for (i = 0; i < 8; i++) {
  *p = partab[*p & 0x7f];
  p++;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (char*,int) ;
 int des_setparity (char*) ;

void
passwd2des(char *pw, char *key)
{
 int i;

 bzero(key, 8);
 for (i = 0; *pw; i = (i+1)%8) {
  key[i] ^= *pw++ << 1;
 }
 des_setparity(key);
}

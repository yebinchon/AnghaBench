
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hex ;

__attribute__((used)) static void
bin2hex(int len, unsigned char *binnum, char *hexnum)
{
 int i;
 unsigned val;

 for (i = 0; i < len; i++) {
  val = binnum[i];
  hexnum[i*2] = hex[val >> 4];
  hexnum[i*2+1] = hex[val & 0xf];
 }
 hexnum[len*2] = 0;
}

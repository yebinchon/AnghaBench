
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hexval (char) ;

__attribute__((used)) static void
hex2bin(int len, char *hexnum, char *binnum)
{
 int i;

 for (i = 0; i < len; i++) {
  *binnum++ = 16 * hexval(hexnum[2*i]) + hexval(hexnum[2*i+1]);
 }
}

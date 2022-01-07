
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MD ;
 int MDString (char*) ;
 int printf (char*,int) ;

int
main(void)
{
 printf("MD%d test suite:\n", MD);

 MDString("");
 MDString("a");
 MDString("abc");
 MDString("message digest");
 MDString("abcdefghijklmnopqrstuvwxyz");
 MDString("ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  "abcdefghijklmnopqrstuvwxyz0123456789");
 MDString("1234567890123456789012345678901234567890"
  "1234567890123456789012345678901234567890");

 return 0;
}

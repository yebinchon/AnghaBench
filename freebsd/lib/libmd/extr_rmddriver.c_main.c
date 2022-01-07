
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIPEMD160String (char*) ;
 int printf (char*) ;

int
main(void)
{
 printf("RIPEMD160 test suite:\n");

 RIPEMD160String("");
 RIPEMD160String("abc");
 RIPEMD160String("message digest");
 RIPEMD160String("abcdefghijklmnopqrstuvwxyz");
 RIPEMD160String("ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  "abcdefghijklmnopqrstuvwxyz0123456789");
 RIPEMD160String("1234567890123456789012345678901234567890"
  "1234567890123456789012345678901234567890");

 return 0;
}

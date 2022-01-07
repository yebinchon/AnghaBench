
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHA ;
 int SHAString (char*) ;
 int printf (char*,int) ;

int
main(void)
{
 printf("SHA-%d test suite:\n", SHA);

 SHAString("");
 SHAString("abc");
 SHAString("message digest");
 SHAString("abcdefghijklmnopqrstuvwxyz");
 SHAString("ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    "abcdefghijklmnopqrstuvwxyz0123456789");
 SHAString("1234567890123456789012345678901234567890"
    "1234567890123456789012345678901234567890");

 return 0;
}

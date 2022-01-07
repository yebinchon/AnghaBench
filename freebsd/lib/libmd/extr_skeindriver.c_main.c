
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKEIN ;
 int SKEINString (char*) ;
 int printf (char*,int) ;

int
main(void)
{
 printf("SKEIN%d test suite:\n", SKEIN);

 SKEINString("");
 SKEINString("abc");
 SKEINString("message digest");
 SKEINString("abcdefghijklmnopqrstuvwxyz");
 SKEINString("ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    "abcdefghijklmnopqrstuvwxyz0123456789");
 SKEINString("1234567890123456789012345678901234567890"
    "1234567890123456789012345678901234567890");

 return 0;
}

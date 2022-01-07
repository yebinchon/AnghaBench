
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail ;
 int test (char*) ;

int
main(void)
{
 test("");
 test("a");
 test("\0");
 test("abcdefghijklmnopqrstuvwxyz");
 return fail;
}

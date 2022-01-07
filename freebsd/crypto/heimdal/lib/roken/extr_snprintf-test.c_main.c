
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmp_with_sprintf_int () ;
 scalar_t__ cmp_with_sprintf_long () ;
 scalar_t__ cmp_with_sprintf_long_long () ;
 scalar_t__ test_null () ;
 scalar_t__ test_sizet () ;

int
main (int argc, char **argv)
{
    int ret = 0;

    ret += cmp_with_sprintf_int ();
    ret += cmp_with_sprintf_long ();



    ret += test_null ();
    ret += test_sizet ();
    return ret;
}

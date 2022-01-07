
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LLONG_MAX ;
 int LLONG_MIN ;
 int fail ;
 int test (char*,int,int,int) ;

int main(int argc, char *argv[])
{
 test("1", 0, 10, 1);
 test("0", -2, 5, 1);
 test("0", 2, 5, 0);
 test("0", 2, LLONG_MAX, 0);
 test("-2", 0, LLONG_MAX, 0);
 test("0", -5, LLONG_MAX, 1);
 test("-3", -3, LLONG_MAX, 1);
 test("-9223372036854775808", LLONG_MIN, LLONG_MAX, 1);
 test("9223372036854775807", LLONG_MIN, LLONG_MAX, 1);
 test("-9223372036854775809", LLONG_MIN, LLONG_MAX, 0);
 test("9223372036854775808", LLONG_MIN, LLONG_MAX, 0);
 test("1000000000000000000000000", LLONG_MIN, LLONG_MAX, 0);
 test("-1000000000000000000000000", LLONG_MIN, LLONG_MAX, 0);
 test("-2", 10, -1, 0);
 test("-2", -10, -1, 1);
 test("-20", -10, -1, 0);
 test("20", -10, -1, 0);

 return (fail);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 float pythagorean_theorem (int,int) ;

int
main(int argc, char *argv[])
{
 float hypotenuse = pythagorean_theorem(3, 4);
 printf("the hypotenuse of 3 and 4 is %d\n", (int) hypotenuse);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N1 ;
 int N2 ;
 int N3 ;
 int p1 ;
 int p2 ;
 int p3 ;
 int passwd1 ;
 int passwd2 ;
 int passwd3 ;
 int r1 ;
 int r2 ;
 int r3 ;
 int salt1 ;
 int salt2 ;
 int salt3 ;
 int tv (int ,int ,int ,int ,int ) ;

int
main(void)
{
    tv(passwd1, salt1, N1, r1, p1);
    tv(passwd2, salt2, N2, r2, p2);
    tv(passwd3, salt3, N3, r3, p3);

    return 0;
}

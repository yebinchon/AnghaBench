
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int ERANGE ;
 int UQUAD_MAX ;
 int errno ;

__attribute__((used)) static u_quad_t
rmultiply(u_quad_t n1, u_quad_t n2)
{
    u_quad_t m, r;
    int b1, b2;

    static int bpw = 0;


    if (n1 == 0 || n2 == 0)
 return 0;
    if (n1 == 1)
 return n2;
    if (n2 == 1)
 return n1;





    if (!bpw) {
 bpw = sizeof(u_quad_t) * 8;
 while (((u_quad_t)1 << (bpw-1)) == 0)
     --bpw;
    }






    for (b1 = bpw; (((u_quad_t)1 << (b1-1)) & n1) == 0; --b1)
 ;
    for (b2 = bpw; (((u_quad_t)1 << (b2-1)) & n2) == 0; --b2)
 ;
    if (b1 + b2 - 2 > bpw) {
 errno = ERANGE;
 return (UQUAD_MAX);
    }
    m = (n1 >> 1) * (n2 >> 1);
    if (m >= ((u_quad_t)1 << (bpw-2))) {
 errno = ERANGE;
 return (UQUAD_MAX);
    }
    m *= 4;

    r = (n1 & n2 & 1)
 + (n2 & 1) * (n1 & ~(u_quad_t)1)
 + (n1 & 1) * (n2 & ~(u_quad_t)1);

    if ((u_quad_t)(m + r) < m) {
 errno = ERANGE;
 return (UQUAD_MAX);
    }
    m += r;

    return (m);
}

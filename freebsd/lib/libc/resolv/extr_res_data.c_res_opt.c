
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int _res ;
 int res_nopt (int *,int,int *,int,int) ;

int
res_opt(int n0, u_char *buf, int buflen, int anslen)
{
 return (res_nopt(&_res, n0, buf, buflen, anslen));
}

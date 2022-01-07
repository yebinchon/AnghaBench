
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int EOPNOTSUPP ;
 int errno ;

__attribute__((used)) static int
x86_pkru_get_perm_unsup(u_int keyidx, int *access, int *modify)
{

 errno = EOPNOTSUPP;
 return (-1);
}

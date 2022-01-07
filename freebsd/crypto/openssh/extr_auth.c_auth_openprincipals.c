
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int FILE ;


 int * auth_openfile (char const*,struct passwd*,int,int ,char*) ;

FILE *
auth_openprincipals(const char *file, struct passwd *pw, int strict_modes)
{
 return auth_openfile(file, pw, strict_modes, 0,
     "authorized principals");
}

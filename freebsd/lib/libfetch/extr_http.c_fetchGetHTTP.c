
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 int * fetchXGetHTTP (struct url*,int *,char const*) ;

FILE *
fetchGetHTTP(struct url *URL, const char *flags)
{
 return (fetchXGetHTTP(URL, ((void*)0), flags));
}

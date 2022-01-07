
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 int * fetchXGet (struct url*,int *,char const*) ;

FILE *
fetchGet(struct url *URL, const char *flags)
{
 return (fetchXGet(URL, ((void*)0), flags));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 int * fetchXGetFile (struct url*,int *,char const*) ;

FILE *
fetchGetFile(struct url *u, const char *flags)
{
 return (fetchXGetFile(u, ((void*)0), flags));
}

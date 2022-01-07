
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 int * fetchXGetFTP (struct url*,int *,char const*) ;

FILE *
fetchGetFTP(struct url *url, const char *flags)
{
 return (fetchXGetFTP(url, ((void*)0), flags));
}

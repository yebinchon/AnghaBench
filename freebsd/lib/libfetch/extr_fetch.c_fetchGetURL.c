
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fetchXGetURL (char const*,int *,char const*) ;

FILE *
fetchGetURL(const char *URL, const char *flags)
{
 return (fetchXGetURL(URL, ((void*)0), flags));
}

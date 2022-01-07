
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getopt_internal (int,char* const*,char const*,int *,int *,int ) ;

int
getopt(int nargc, char * const *nargv, const char *options)
{
 return (getopt_internal(nargc, nargv, options, ((void*)0), ((void*)0), 0));
}

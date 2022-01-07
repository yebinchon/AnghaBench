
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gzFile ;
typedef int FILE ;


 int * funopen (int *,int *,int *,int ,int ) ;
 int * gzopen (char const*,char const*) ;
 int xgzclose ;
 int * xgzread ;
 int xgzseek ;
 int * xgzwrite ;

FILE *
zopen(const char *fname, const char *mode)
{
    gzFile gz = gzopen(fname, mode);
    if(gz == ((void*)0))
 return ((void*)0);

    if(*mode == 'r')
 return (funopen(gz, xgzread, ((void*)0), xgzseek, xgzclose));
    else
 return (funopen(gz, ((void*)0), xgzwrite, xgzseek, xgzclose));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int EditLine ;


 int * el_init_internal (char const*,int *,int *,int *,int,int,int,int ) ;

EditLine *
el_init_fd(const char *prog, FILE *fin, FILE *fout, FILE *ferr,
    int fdin, int fdout, int fderr)
{
 return el_init_internal(prog, fin, fout, ferr, fdin, fdout, fderr, 0);
}

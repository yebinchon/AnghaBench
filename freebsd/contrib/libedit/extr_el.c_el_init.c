
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int EditLine ;


 int * el_init_fd (char const*,int *,int *,int *,int ,int ,int ) ;
 int fileno (int *) ;

EditLine *
el_init(const char *prog, FILE *fin, FILE *fout, FILE *ferr)
{
    return el_init_fd(prog, fin, fout, ferr, fileno(fin), fileno(fout),
 fileno(ferr));
}

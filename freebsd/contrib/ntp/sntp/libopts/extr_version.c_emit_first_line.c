
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int NL ;
 int fputc (int ,int *) ;
 int fputs (char const*,int *) ;
 int fwrite (char const*,int,int,int *) ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static void
emit_first_line(
    FILE * fp, char const * alt1, char const * alt2, char const * alt3)
{
    char const * p = (alt1 != ((void*)0)) ? alt1 : ((alt2 != ((void*)0)) ? alt2 : alt3);
    char const * e;
    if (p == ((void*)0))
        return;
    e = strchr(p, NL);
    if (e == ((void*)0))
        fputs(p, fp);
    else
        fwrite(p, 1, (e - p), fp);
    fputc(NL, fp);
}

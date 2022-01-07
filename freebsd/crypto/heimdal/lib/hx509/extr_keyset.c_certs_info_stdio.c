
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static int
certs_info_stdio(void *ctx, const char *str)
{
    FILE *f = ctx;
    fprintf(f, "%s\n", str);
    return 0;
}

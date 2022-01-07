
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void
print_pem_stamp(FILE *f, const char *type, const char *str)
{
    fprintf(f, "-----%s %s-----\n", type, str);
}

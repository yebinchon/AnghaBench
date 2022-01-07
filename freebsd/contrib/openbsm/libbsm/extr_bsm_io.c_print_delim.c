
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void
print_delim(FILE *fp, const char *del)
{

 fprintf(fp, "%s", del);
}

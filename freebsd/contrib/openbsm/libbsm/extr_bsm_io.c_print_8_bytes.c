
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int FILE ;


 int fprintf (int *,char const*,int ) ;

__attribute__((used)) static void
print_8_bytes(FILE *fp, u_int64_t val, const char *format)
{

 fprintf(fp, format, val);
}

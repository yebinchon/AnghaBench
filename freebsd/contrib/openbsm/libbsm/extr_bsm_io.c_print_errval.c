
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_errval(FILE *fp, u_int32_t val)
{

 fprintf(fp, "Error %u", val);
}

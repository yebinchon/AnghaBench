
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static int
print_bt(FILE *f, int flag)
{
    if(flag == 0){
 fprintf(f, "/* For compatibility with various type definitions */\n");
 fprintf(f, "#ifndef __BIT_TYPES_DEFINED__\n");
 fprintf(f, "#define __BIT_TYPES_DEFINED__\n");
 fprintf(f, "\n");
    }
    return 1;
}

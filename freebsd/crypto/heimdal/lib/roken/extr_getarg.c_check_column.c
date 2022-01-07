
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static int
check_column(FILE *f, int col, int len, int columns)
{
    if(col + len > columns) {
 fprintf(f, "\n");
 col = fprintf(f, "  ");
    }
    return col;
}

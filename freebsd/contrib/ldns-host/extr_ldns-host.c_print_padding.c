
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static int
print_padding(int fromcol, int tocol) {
    int col = fromcol, nextcol = fromcol + 8 - fromcol%8;

    if (fromcol + 1 > tocol) tocol = fromcol + 1;
    for (; nextcol <= tocol; col = nextcol, nextcol += 8)
        printf("\t");
    for (; col < tocol; col++)
        printf(" ");
    return col - fromcol;
}

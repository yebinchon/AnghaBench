
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int max_cols ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
write_tabs(int *tab_list)
{
    int stop;

    while ((stop = *tab_list++) > 0 && stop <= max_cols) {
 fputs((stop == 1) ? "*" : "\t*", stdout);
    };

    if (stop < max_cols)
 fputs("\t+", stdout);
    putchar('\n');
}

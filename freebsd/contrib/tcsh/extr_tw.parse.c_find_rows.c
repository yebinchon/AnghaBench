
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 scalar_t__ Strlen (int *) ;
 int TermH ;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static int
find_rows(Char *items[], int count, int no_file_suffix)
{
    int i, columns, rows;
    unsigned int maxwidth = 0;

    for (i = 0; i < count; i++)
 maxwidth = max(maxwidth, (unsigned int) Strlen(items[i]));

    maxwidth += no_file_suffix ? 1 : 2;
    columns = (TermH + 1) / maxwidth;
    if (!columns)
 columns = 1;
    rows = (count + (columns - 1)) / columns;

    return rows;
}

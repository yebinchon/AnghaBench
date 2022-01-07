
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fprintf_unfiltered ;
 int fputs_unfiltered ;
 int printchar (char const,int ,int ,struct ui_file*,int) ;

void
fputstrn_unfiltered (const char *str, int n, int quoter,
       struct ui_file *stream)
{
  int i;
  for (i = 0; i < n; i++)
    printchar (str[i], fputs_unfiltered, fprintf_unfiltered, stream, quoter);
}

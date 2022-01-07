
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sl_cur; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 int fputs (char*,int ) ;
 int putc (char,int ) ;
 size_t strlen (char*) ;
 int ttyout ;
 size_t ttywidth ;

void
list_vertical(StringList *sl)
{
 size_t i, j;
 size_t columns, lines;
 char *p;
 size_t w, width;

 width = 0;

 for (i = 0 ; i < sl->sl_cur ; i++) {
  w = strlen(sl->sl_str[i]);
  if (w > width)
   width = w;
 }
 width = (width + 8) &~ 7;

 columns = ttywidth / width;
 if (columns == 0)
  columns = 1;
 lines = (sl->sl_cur + columns - 1) / columns;
 for (i = 0; i < lines; i++) {
  for (j = 0; j < columns; j++) {
   p = sl->sl_str[j * lines + i];
   if (p)
    fputs(p, ttyout);
   if (j * lines + i + lines >= sl->sl_cur) {
    putc('\n', ttyout);
    break;
   }
   if (p) {
    w = strlen(p);
    while (w < width) {
     w = (w + 8) &~ 7;
     (void)putc('\t', ttyout);
    }
   }
  }
 }
}

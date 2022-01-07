
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* header_next; } ;
struct ui_out {TYPE_2__ table; } ;
struct TYPE_3__ {int colno; int width; int alignment; char* colhdr; struct TYPE_3__* next; } ;



__attribute__((used)) static int
get_next_header (struct ui_out *uiout,
   int *colno,
   int *width,
   int *alignment,
   char **colhdr)
{

  if (uiout->table.header_next == ((void*)0))
    return 0;
  *colno = uiout->table.header_next->colno;
  *width = uiout->table.header_next->width;
  *alignment = uiout->table.header_next->alignment;
  *colhdr = uiout->table.header_next->colhdr;

  uiout->table.header_next = uiout->table.header_next->next;
  return 1;
}

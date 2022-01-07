
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_13__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_15__ {TYPE_3__ tr_end; TYPE_2__ tr_begin; } ;
typedef TYPE_4__ teken_rect_t ;
struct TYPE_16__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef TYPE_5__ teken_pos_t ;
typedef int teken_char_t ;
typedef int teken_attr_t ;
typedef int UINTN ;
struct TYPE_17__ {int (* EnableCursor ) (TYPE_6__*,int ) ;TYPE_1__* Mode; int (* QueryMode ) (TYPE_6__*,int ,int *,int *) ;} ;
struct TYPE_12__ {int Mode; } ;


 int FALSE ;
 int TRUE ;
 TYPE_6__* conout ;
 int efi_text_putchar (void*,TYPE_5__*,int ,int const*) ;
 int stub1 (TYPE_6__*,int ,int *,int *) ;
 int stub2 (TYPE_6__*,int ) ;
 int stub3 (TYPE_6__*,int ) ;

__attribute__((used)) static void
efi_text_fill(void *s, const teken_rect_t *r, teken_char_t c,
    const teken_attr_t *a)
{
 teken_pos_t p;
 UINTN row, col;

 (void) conout->QueryMode(conout, conout->Mode->Mode, &col, &row);

 conout->EnableCursor(conout, FALSE);
 for (p.tp_row = r->tr_begin.tp_row; p.tp_row < r->tr_end.tp_row;
     p.tp_row++)
  for (p.tp_col = r->tr_begin.tp_col;
      p.tp_col < r->tr_end.tp_col; p.tp_col++)
   efi_text_putchar(s, &p, c, a);
 conout->EnableCursor(conout, TRUE);
}

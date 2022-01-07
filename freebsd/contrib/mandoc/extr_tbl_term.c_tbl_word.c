
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int fonti; } ;
struct tbl_dat {int string; TYPE_1__* layout; } ;
struct TYPE_2__ {int flags; } ;


 int TBL_CELL_BOLD ;
 int TBL_CELL_ITALIC ;
 int TERMFONT_BOLD ;
 int TERMFONT_UNDER ;
 int term_fontpopq (struct termp*,int) ;
 int term_fontpush (struct termp*,int ) ;
 int term_word (struct termp*,int ) ;

__attribute__((used)) static void
tbl_word(struct termp *tp, const struct tbl_dat *dp)
{
 int prev_font;

 prev_font = tp->fonti;
 if (dp->layout->flags & TBL_CELL_BOLD)
  term_fontpush(tp, TERMFONT_BOLD);
 else if (dp->layout->flags & TBL_CELL_ITALIC)
  term_fontpush(tp, TERMFONT_UNDER);

 term_word(tp, dp->string);

 term_fontpopq(tp, prev_font);
}

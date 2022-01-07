
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {size_t maxrmargin; int trailspace; int flags; TYPE_1__* tcol; } ;
struct roff_meta {int os; int date; } ;
struct TYPE_2__ {size_t offset; size_t rmargin; } ;


 int TERMFONT_NONE ;
 int TERMP_NOBREAK ;
 int TERMP_NOSPACE ;
 int term_flushln (struct termp*) ;
 int term_fontrepl (struct termp*,int ) ;
 size_t term_len (struct termp*,int) ;
 size_t term_strlen (struct termp*,int ) ;
 int term_vspace (struct termp*) ;
 int term_word (struct termp*,int ) ;

__attribute__((used)) static void
print_mdoc_foot(struct termp *p, const struct roff_meta *meta)
{
 size_t sz;

 term_fontrepl(p, TERMFONT_NONE);
 term_vspace(p);

 p->tcol->offset = 0;
 sz = term_strlen(p, meta->date);
 p->tcol->rmargin = p->maxrmargin > sz ?
     (p->maxrmargin + term_len(p, 1) - sz) / 2 : 0;
 p->trailspace = 1;
 p->flags |= TERMP_NOSPACE | TERMP_NOBREAK;

 term_word(p, meta->os);
 term_flushln(p);

 p->tcol->offset = p->tcol->rmargin;
 sz = term_strlen(p, meta->os);
 p->tcol->rmargin = p->maxrmargin > sz ? p->maxrmargin - sz : 0;
 p->flags |= TERMP_NOSPACE;

 term_word(p, meta->date);
 term_flushln(p);

 p->tcol->offset = p->tcol->rmargin;
 p->tcol->rmargin = p->maxrmargin;
 p->trailspace = 0;
 p->flags &= ~TERMP_NOBREAK;
 p->flags |= TERMP_NOSPACE;

 term_word(p, meta->os);
 term_flushln(p);

 p->tcol->offset = 0;
 p->tcol->rmargin = p->maxrmargin;
 p->flags = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int flags; int trailspace; int maxrmargin; int mdocstyle; TYPE_1__* tcol; } ;
struct roff_meta {char* vol; int msec; int title; } ;
struct TYPE_2__ {size_t offset; size_t rmargin; } ;


 int TERMP_NOBREAK ;
 int TERMP_NOSPACE ;
 int assert (int ) ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,int ,int ) ;
 int term_flushln (struct termp*) ;
 size_t term_len (struct termp*,int) ;
 size_t term_strlen (struct termp*,char const*) ;
 int term_vspace (struct termp*) ;
 int term_word (struct termp*,char const*) ;

__attribute__((used)) static void
print_man_head(struct termp *p, const struct roff_meta *meta)
{
 const char *volume;
 char *title;
 size_t vollen, titlen;

 assert(meta->title);
 assert(meta->msec);

 volume = ((void*)0) == meta->vol ? "" : meta->vol;
 vollen = term_strlen(p, volume);



 mandoc_asprintf(&title, "%s(%s)", meta->title, meta->msec);
 titlen = term_strlen(p, title);

 p->flags |= TERMP_NOBREAK | TERMP_NOSPACE;
 p->trailspace = 1;
 p->tcol->offset = 0;
 p->tcol->rmargin = 2 * (titlen+1) + vollen < p->maxrmargin ?
     (p->maxrmargin - vollen + term_len(p, 1)) / 2 :
     vollen < p->maxrmargin ? p->maxrmargin - vollen : 0;

 term_word(p, title);
 term_flushln(p);



 p->flags |= TERMP_NOSPACE;
 p->tcol->offset = p->tcol->rmargin;
 p->tcol->rmargin = p->tcol->offset + vollen + titlen <
     p->maxrmargin ? p->maxrmargin - titlen : p->maxrmargin;

 term_word(p, volume);
 term_flushln(p);



 p->flags &= ~TERMP_NOBREAK;
 p->trailspace = 0;
 if (p->tcol->rmargin + titlen <= p->maxrmargin) {
  p->flags |= TERMP_NOSPACE;
  p->tcol->offset = p->tcol->rmargin;
  p->tcol->rmargin = p->maxrmargin;
  term_word(p, title);
  term_flushln(p);
 }

 p->flags &= ~TERMP_NOSPACE;
 p->tcol->offset = 0;
 p->tcol->rmargin = p->maxrmargin;







 term_vspace(p);
 if ( ! p->mdocstyle) {
  term_vspace(p);
  term_vspace(p);
 }
 free(title);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int flags; int trailspace; size_t maxrmargin; TYPE_1__* tcol; int mdocstyle; } ;
struct roff_meta {char* title; char* msec; char* date; char* os; scalar_t__ hasbody; } ;
struct TYPE_2__ {size_t offset; size_t rmargin; } ;


 int TERMFONT_NONE ;
 int TERMP_NOBREAK ;
 int TERMP_NOSPACE ;
 int assert (char*) ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,char*,char*) ;
 char* mandoc_strdup (char*) ;
 int term_flushln (struct termp*) ;
 int term_fontrepl (struct termp*,int ) ;
 size_t term_len (struct termp*,int) ;
 size_t term_strlen (struct termp*,char*) ;
 int term_vspace (struct termp*) ;
 int term_word (struct termp*,char*) ;

__attribute__((used)) static void
print_man_foot(struct termp *p, const struct roff_meta *meta)
{
 char *title;
 size_t datelen, titlen;

 assert(meta->title);
 assert(meta->msec);
 assert(meta->date);

 term_fontrepl(p, TERMFONT_NONE);

 if (meta->hasbody)
  term_vspace(p);







 if ( ! p->mdocstyle) {
  if (meta->hasbody) {
   term_vspace(p);
   term_vspace(p);
  }
  mandoc_asprintf(&title, "%s(%s)",
      meta->title, meta->msec);
 } else if (meta->os != ((void*)0)) {
  title = mandoc_strdup(meta->os);
 } else {
  title = mandoc_strdup("");
 }
 datelen = term_strlen(p, meta->date);



 p->flags |= TERMP_NOSPACE | TERMP_NOBREAK;
 p->trailspace = 1;
 p->tcol->offset = 0;
 p->tcol->rmargin = p->maxrmargin > datelen ?
     (p->maxrmargin + term_len(p, 1) - datelen) / 2 : 0;

 if (meta->os)
  term_word(p, meta->os);
 term_flushln(p);



 p->tcol->offset = p->tcol->rmargin;
 titlen = term_strlen(p, title);
 p->tcol->rmargin = p->maxrmargin > titlen ?
     p->maxrmargin - titlen : 0;
 p->flags |= TERMP_NOSPACE;

 term_word(p, meta->date);
 term_flushln(p);



 p->flags &= ~TERMP_NOBREAK;
 p->flags |= TERMP_NOSPACE;
 p->trailspace = 0;
 p->tcol->offset = p->tcol->rmargin;
 p->tcol->rmargin = p->maxrmargin;

 term_word(p, title);
 term_flushln(p);
        p->tcol->offset = 0;
        p->flags = 0;

 free(title);
}

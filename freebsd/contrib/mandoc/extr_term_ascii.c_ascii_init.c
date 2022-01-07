
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int maxtcol; int line; int defrmargin; int lastrmargin; int fontsz; int enc; int mdocstyle; int defindent; int synopsisonly; int width; int letter; int endline; int advance; int setwidth; int type; int hspan; int end; int begin; int fontl; int * fontq; void* tcols; void* tcol; } ;
struct manoutput {int indent; int width; scalar_t__ synopsisonly; scalar_t__ mdoc; } ;
typedef enum termenc { ____Placeholder_termenc } termenc ;


 int CODESET ;
 int LC_CTYPE ;
 int MB_CUR_MAX ;
 int TERMENC_ASCII ;
 int TERMENC_LOCALE ;
 int TERMENC_UTF8 ;
 int TERMFONT_NONE ;
 int TERMTYPE_CHAR ;
 int UINT16_MAX ;
 char* UTF8_LOCALE ;
 int ascii_advance ;
 int ascii_begin ;
 int ascii_end ;
 int ascii_endline ;
 int ascii_hspan ;
 int ascii_letter ;
 int ascii_setwidth ;
 int ascii_width ;
 int assert (int) ;
 int locale_advance ;
 int locale_endline ;
 int locale_letter ;
 int locale_width ;
 void* mandoc_calloc (int,int) ;
 int * mandoc_reallocarray (int *,int,int) ;
 int nl_langinfo (int ) ;
 char* setlocale (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct termp *
ascii_init(enum termenc enc, const struct manoutput *outopts)
{



 struct termp *p;

 p = mandoc_calloc(1, sizeof(*p));
 p->tcol = p->tcols = mandoc_calloc(1, sizeof(*p->tcol));
 p->maxtcol = 1;

 p->line = 1;
 p->defrmargin = p->lastrmargin = 78;
 p->fontq = mandoc_reallocarray(((void*)0),
      (p->fontsz = 8), sizeof(*p->fontq));
 p->fontq[0] = p->fontl = TERMFONT_NONE;

 p->begin = ascii_begin;
 p->end = ascii_end;
 p->hspan = ascii_hspan;
 p->type = TERMTYPE_CHAR;

 p->enc = TERMENC_ASCII;
 p->advance = ascii_advance;
 p->endline = ascii_endline;
 p->letter = ascii_letter;
 p->setwidth = ascii_setwidth;
 p->width = ascii_width;
 if (outopts->mdoc) {
  p->mdocstyle = 1;
  p->defindent = 5;
 }
 if (outopts->indent)
  p->defindent = outopts->indent;
 if (outopts->width)
  p->defrmargin = outopts->width;
 if (outopts->synopsisonly)
  p->synopsisonly = 1;

 assert(p->defindent < UINT16_MAX);
 assert(p->defrmargin < UINT16_MAX);
 return p;
}

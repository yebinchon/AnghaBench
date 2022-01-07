
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int maxtcol; int type; int fontsz; unsigned int defrmargin; TYPE_1__* ps; int width; int setwidth; int letter; int hspan; int endline; int end; int begin; int advance; int fontl; int * fontq; int enc; void* tcols; void* tcol; } ;
struct manoutput {char* paper; } ;
typedef enum termtype { ____Placeholder_termtype } termtype ;
struct TYPE_2__ {char* medianame; int scale; size_t width; size_t lastwidth; size_t height; unsigned int header; unsigned int top; size_t footer; size_t bottom; size_t left; size_t lineheight; } ;


 void* PNT2AFM (struct termp*,double) ;
 int TERMENC_ASCII ;
 int TERMFONT_NONE ;
 void* mandoc_calloc (int,int) ;
 int * mandoc_reallocarray (int *,int,int) ;
 int ps_advance ;
 int ps_begin ;
 int ps_end ;
 int ps_endline ;
 int ps_hspan ;
 int ps_letter ;
 int ps_setwidth ;
 int ps_width ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static struct termp *
pspdf_alloc(const struct manoutput *outopts, enum termtype type)
{
 struct termp *p;
 unsigned int pagex, pagey;
 size_t marginx, marginy, lineheight;
 const char *pp;

 p = mandoc_calloc(1, sizeof(*p));
 p->tcol = p->tcols = mandoc_calloc(1, sizeof(*p->tcol));
 p->maxtcol = 1;
 p->type = type;

 p->enc = TERMENC_ASCII;
 p->fontq = mandoc_reallocarray(((void*)0),
     (p->fontsz = 8), sizeof(*p->fontq));
 p->fontq[0] = p->fontl = TERMFONT_NONE;
 p->ps = mandoc_calloc(1, sizeof(*p->ps));

 p->advance = ps_advance;
 p->begin = ps_begin;
 p->end = ps_end;
 p->endline = ps_endline;
 p->hspan = ps_hspan;
 p->letter = ps_letter;
 p->setwidth = ps_setwidth;
 p->width = ps_width;



 p->ps->medianame = "Letter";
 pagex = 216;
 pagey = 279;
 pp = outopts->paper;
 if (pp != ((void*)0) && strcasecmp(pp, "letter") != 0) {
  if (strcasecmp(pp, "a3") == 0) {
   p->ps->medianame = "A3";
   pagex = 297;
   pagey = 420;
  } else if (strcasecmp(pp, "a4") == 0) {
   p->ps->medianame = "A4";
   pagex = 210;
   pagey = 297;
  } else if (strcasecmp(pp, "a5") == 0) {
   p->ps->medianame = "A5";
   pagex = 148;
   pagey = 210;
  } else if (strcasecmp(pp, "legal") == 0) {
   p->ps->medianame = "Legal";
   pagex = 216;
   pagey = 356;
  } else if (sscanf(pp, "%ux%u", &pagex, &pagey) == 2)
   p->ps->medianame = "CustomSize";
  else
   warnx("%s: Unknown paper", pp);
 }






 p->ps->scale = 11;



 pagex = PNT2AFM(p, ((double)pagex * 72.0 / 25.4));
 pagey = PNT2AFM(p, ((double)pagey * 72.0 / 25.4));



 marginx = (size_t)((double)pagex / 9.0);
 marginy = (size_t)((double)pagey / 9.0);



 lineheight = PNT2AFM(p, ((double)p->ps->scale * 1.4));

 p->ps->width = p->ps->lastwidth = (size_t)pagex;
 p->ps->height = (size_t)pagey;
 p->ps->header = pagey - (marginy / 2) - (lineheight / 2);
 p->ps->top = pagey - marginy;
 p->ps->footer = (marginy / 2) - (lineheight / 2);
 p->ps->bottom = marginy;
 p->ps->left = marginx;
 p->ps->lineheight = lineheight;

 p->defrmargin = pagex - (marginx * 2);
 return p;
}

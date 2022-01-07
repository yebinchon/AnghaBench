
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR_DBWIDTH ;
 int Cursor ;
 int CursorH ;
 int CursorV ;
 int** Display ;
 int IncMatchLen ;
 int InputBuf ;
 int LITERAL ;
 int LIT_FACTOR ;
 int MARGIN_AUTO ;
 int MARGIN_MAGIC ;
 int Mark ;
 scalar_t__ MarkIsSet ;
 int* Prompt ;
 int STRhighlight ;
 int StartHighlight () ;
 int StopHighlight () ;
 int T_Margin ;
 int TermH ;
 scalar_t__ adrof (int ) ;
 int flush () ;
 scalar_t__ highlighting ;
 int* litptr ;
 int max (int,int ) ;
 int min (int,int ) ;
 int putraw (char) ;
 int putwraw (int) ;
 int xprintf (char*,int) ;

void
so_write(Char *cp, int n)
{
    int cur_pos, prompt_len = 0, region_start = 0, region_end = 0;

    if (n <= 0)
 return;

    if (n > TermH) {




 return;
    }

    if (adrof(STRhighlight)) {

 Char *promptc;
 for (promptc = Prompt; *promptc; promptc++);
 prompt_len = promptc - Prompt;


 if (IncMatchLen) {
     region_start = (Cursor - InputBuf) + prompt_len;
     region_end = region_start + IncMatchLen;
 } else if (MarkIsSet) {
     region_start = (min(Cursor, Mark) - InputBuf) + prompt_len;
     region_end = (max(Cursor, Mark) - InputBuf) + prompt_len;
 }
    }

    do {
 if (adrof(STRhighlight)) {
     cur_pos = CursorV * TermH + CursorH;
     if (!highlighting &&
  cur_pos >= region_start && cur_pos < region_end)
  StartHighlight();
     else if (highlighting && cur_pos >= region_end)
  StopHighlight();



     if (highlighting && cur_pos == (Cursor - InputBuf) + prompt_len)
  StopHighlight();
 }

 if (*cp != CHAR_DBWIDTH) {
     if (*cp & LITERAL) {
  Char *d;



  for (d = litptr + (*cp & ~LITERAL) * LIT_FACTOR; *d; d++)
      (void) putwraw(*d);
     }
     else
  (void) putwraw(*cp);
 }
 cp++;
 CursorH++;
    } while (--n);

    if (adrof(STRhighlight) && highlighting)
 StopHighlight();

    if (CursorH >= TermH) {
 if (T_Margin & MARGIN_AUTO) {
     CursorH = 0;
     CursorV++;
     if (T_Margin & MARGIN_MAGIC) {

  Char xc;
  if ((xc = Display[CursorV][CursorH]) != '\0') {
      so_write(&xc, 1);
      while(Display[CursorV][CursorH] == CHAR_DBWIDTH)
   CursorH++;
  }
  else {
      (void) putraw(' ');
      CursorH = 1;
  }
     }
 }
 else
     CursorH = TermH - 1;
    }
}

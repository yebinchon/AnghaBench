
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASC (int) ;
 int ATTRIBUTES ;
 int CHAR ;
 int CTL_ESC (int) ;
 int MB_CUR_MAX ;
 int QUOTE ;
 int STRcolorcat ;
 int SetAttributes (int) ;
 int TRIM ;
 scalar_t__ adrof (int ) ;
 scalar_t__ didfds ;
 int flush () ;
 scalar_t__ haderr ;
 scalar_t__ is1atty ;
 scalar_t__ is2atty ;
 scalar_t__ iscntrl (int) ;
 scalar_t__ isdiagatty ;
 scalar_t__ isoutatty ;
 int isprint (int) ;
 scalar_t__ lbuffed ;
 int output_raw ;
 int putpure (int) ;
 int putraw (int) ;
 scalar_t__ xlate_cr ;

void
xputchar(int c)
{
    int atr;

    atr = c & ATTRIBUTES & TRIM;
    c &= CHAR | QUOTE;
    if (!output_raw && (c & QUOTE) == 0) {
 if (iscntrl(c) && (ASC(c) < 0x80 || MB_CUR_MAX == 1)) {
     if (c != '\t' && c != '\n'



  && (xlate_cr || c != '\r'))
     {
  xputchar('^' | atr);
  if (c == CTL_ESC('\177'))
      c = '?';
  else

      c = CTL_ESC(ASC(c)|0100);
     }
 }
 else if (!isprint(c) && (ASC(c) < 0x80 || MB_CUR_MAX == 1)) {
     xputchar('\\' | atr);
     xputchar((((c >> 6) & 7) + '0') | atr);
     xputchar((((c >> 3) & 7) + '0') | atr);
     c = (c & 7) + '0';
 }
 (void) putraw(c | atr);
    }
    else {
 c &= TRIM;
 if (haderr ? (didfds ? is2atty : isdiagatty) :
     (didfds ? is1atty : isoutatty))
     SetAttributes(c | atr);
 (void) putpure(c);
    }
    if (lbuffed && (c & CHAR) == '\n')
 flush();
}

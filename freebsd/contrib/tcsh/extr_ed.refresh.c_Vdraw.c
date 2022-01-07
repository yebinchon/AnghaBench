
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char ASCII ;
 char CHAR_DBWIDTH ;
 int TermH ;
 size_t TermV ;
 char** Vdisplay ;
 int abort () ;
 int reprintf (char*,size_t,size_t,...) ;
 int vcursor_h ;
 size_t vcursor_v ;

__attribute__((used)) static void
Vdraw(Char c, int width)
{
    while (vcursor_h + width > TermH)
 Vdraw(' ', 1);
    Vdisplay[vcursor_v][vcursor_h] = c;
    if (width)
 vcursor_h++;
    while (--width > 0)
 Vdisplay[vcursor_v][vcursor_h++] = CHAR_DBWIDTH;
    if (vcursor_h >= TermH) {
 Vdisplay[vcursor_v][TermH] = '\0';
 vcursor_h = 0;
 vcursor_v++;







    }
}

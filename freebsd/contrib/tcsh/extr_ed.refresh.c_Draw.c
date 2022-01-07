
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ATTRIBUTES ;
 int BOLD ;
 int CHAR ;
 int CHAR_DBWIDTH ;
 int CTL_ESC (char) ;
 int MakeLiteral (int*,int,int ) ;
 int NLSClassify (int,int,int) ;
 int STANDOUT ;
 int Strlen (int *) ;
 int UNDER ;
 int ** Vdisplay ;
 int Vdraw (int,int) ;
 int* _toascii ;
 int* _toebcdic ;
 int vcursor_h ;
 int vcursor_v ;

__attribute__((used)) static int
Draw(Char *cp, int nocomb, int drawPrompt)
{
    int w, i, lv, lh;
    Char c, attr;
    attr = *cp & ~CHAR;
    c = *cp & CHAR;

    w = NLSClassify(c, nocomb, drawPrompt);
    switch (w) {
 case 129:
     Vdraw('\0', 0);
     vcursor_h = 0;
     vcursor_v++;
     break;
 case 128:
     do {
  Vdraw(' ', 1);
     } while ((vcursor_h & 07) != 0);
     break;
 case 135:
     Vdraw('^' | attr, 1);
     if (c == CTL_ESC('\177')) {
  Vdraw('?' | attr, 1);
     } else {




  Vdraw(_toebcdic[_toascii[c]|0100] | attr, 1);

     }
     break;
 case 134:
     Vdraw('\\' | attr, 1);
     Vdraw((((c >> 6) & 7) + '0') | attr, 1);
     Vdraw((((c >> 3) & 7) + '0') | attr, 1);
     Vdraw(((c & 7) + '0') | attr, 1);
     break;
 case 133:
 case 132:
 case 131:
 case 130:
     Vdraw('\\', 1);
     Vdraw('U', 1);
     Vdraw('+', 1);
     for (i = 16 + 4 * (-w-5); i >= 0; i -= 4)
  Vdraw("0123456789ABCDEF"[(c >> i) & 15] | attr, 1);
     break;
 case 0:
     lv = vcursor_v;
     lh = vcursor_h;
     for (;;) {
  lh--;
  if (lh < 0) {
      lv--;
      if (lv < 0)
   break;
      lh = Strlen(Vdisplay[lv]) - 1;
  }
  if (Vdisplay[lv][lh] != CHAR_DBWIDTH)
      break;
     }
     if (lv < 0) {
  Vdraw('\\' | attr, 1);
  Vdraw((((c >> 6) & 7) + '0') | attr, 1);
  Vdraw((((c >> 3) & 7) + '0') | attr, 1);
  Vdraw(((c & 7) + '0') | attr, 1);
  break;
     }
     Vdisplay[lv][lh] = MakeLiteral(cp, 1, Vdisplay[lv][lh]);
     break;
 default:
     Vdraw(*cp, w);
     break;
    }
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR ;
 int CTL_ESC (char) ;
 int Cursor ;
 scalar_t__ CursorH ;
 int* InputBuf ;
 int LastChar ;
 int MakeLiteral (int*,int,int ) ;
 int MarkIsSet ;


 int NLSClassify (int,int,int ) ;
 int PutPlusOne (int,int) ;
 int Refresh () ;
 int STRhighlight ;
 int StartHighlight () ;
 int StopHighlight () ;
 scalar_t__ TermH ;
 int* _toascii ;
 int* _toebcdic ;
 int adrof (int ) ;
 int flush () ;
 scalar_t__ rprompt_h ;

void
RefPlusOne(int l)
{

    Char *cp, c;
    int w;

    if (Cursor != LastChar) {
 Refresh();
 return;
    }
    if (rprompt_h != 0 && (TermH - CursorH - rprompt_h < 3)) {
 Refresh();
 return;
    }
    cp = Cursor - l;
    c = *cp & CHAR;
    w = NLSClassify(c, cp == InputBuf, 0);
    switch(w) {
 case 129:
     PutPlusOne('^', 1);
     if (c == CTL_ESC('\177')) {
  PutPlusOne('?', 1);
  break;
     }




     PutPlusOne(_toebcdic[_toascii[c]|0100], 1);

     break;
 case 128:
     PutPlusOne('\\', 1);
     PutPlusOne(((c >> 6) & 7) + '0', 1);
     PutPlusOne(((c >> 3) & 7) + '0', 1);
     PutPlusOne((c & 7) + '0', 1);
     break;
 case 1:
     if (adrof(STRhighlight) && MarkIsSet)
  StartHighlight();
     if (l > 1)
  PutPlusOne(MakeLiteral(cp, l, 0), 1);
     else
  PutPlusOne(*cp, 1);
     if (adrof(STRhighlight) && MarkIsSet)
  StopHighlight();
     break;
 default:
     Refresh();
     return;
    }
    flush();
}

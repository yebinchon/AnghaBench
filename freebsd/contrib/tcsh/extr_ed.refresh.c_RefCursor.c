
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR ;
 int ClearDisp () ;
 int ClearLines () ;
 int* Cursor ;
 int* InputBuf ;
 int LITERAL ;
 scalar_t__ MarkIsSet ;
 int MoveToChar (int) ;
 int MoveToLine (int) ;





 int NLSCLASS_ILLEGAL_SIZE (int) ;


 int NLSClassify (int,int,int ) ;
 int* Prompt ;
 int Refresh () ;
 int STRhighlight ;
 int TermH ;
 scalar_t__ adrof (int ) ;
 int flush () ;

void
RefCursor(void)
{
    Char *cp;
    int w, h, th, v;


    h = 0;
    v = 0;
    th = TermH;

    for (cp = Prompt; cp != ((void*)0) && *cp; ) {
 if (*cp & LITERAL) {
     cp++;
     continue;
 }
 w = NLSClassify(*cp & CHAR, cp == Prompt, 0);
 cp++;
 switch(w) {
     case 129:
  h = 0;
  v++;
  break;
     case 128:
  while (++h & 07)
      ;
  break;
     case 134:
  h += 2;
  break;
     case 133:
  h += 4;
  break;
     case 132:
     case 131:
     case 130:
  h += 3 + 2 * NLSCLASS_ILLEGAL_SIZE(w);
  break;
     default:
  h += w;
 }
 if (h >= th) {
     h -= th;
     v++;
 }
    }

    for (cp = InputBuf; cp < Cursor;) {
 w = NLSClassify(*cp & CHAR, cp == InputBuf, 0);
 cp++;
 switch(w) {
     case 129:
  h = 0;
  v++;
  break;
     case 128:
  while (++h & 07)
      ;
  break;
     case 134:
  h += 2;
  break;
     case 133:
  h += 4;
  break;
     case 132:
     case 131:
     case 130:
  h += 3 + 2 * NLSCLASS_ILLEGAL_SIZE(w);
  break;
     default:
  h += w;
 }
 if (h >= th) {
     h -= th;
     v++;
 }
    }


    MoveToLine(v);
    MoveToChar(h);
    if (adrof(STRhighlight) && MarkIsSet) {
 ClearLines();
 ClearDisp();
 Refresh();
    }
    flush();
}

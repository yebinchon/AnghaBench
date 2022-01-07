
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR ;
 int INVALID_BYTE ;
 scalar_t__ Iscntrl (int) ;
 scalar_t__ Isprint (int) ;
 int NLSCLASS_CTRL ;
 int NLSCLASS_ILLEGAL ;
 int NLSCLASS_ILLEGAL2 ;
 int NLSCLASS_ILLEGAL3 ;
 int NLSCLASS_ILLEGAL4 ;
 int NLSCLASS_ILLEGAL5 ;
 int NLSCLASS_NL ;
 int NLSCLASS_TAB ;
 int NLSWidth (int) ;
 int QUOTE ;

int
NLSClassify(Char c, int nocomb, int drawPrompt)
{
    int w;

    if ((c & 0x80) != 0)
 return NLSCLASS_ILLEGAL;

    if (!drawPrompt) {
 if (c >= 0x10000)
     return NLSCLASS_ILLEGAL2;
    }
    if (Iscntrl(c) && (c & CHAR) < 0x100) {
 if (c == '\n')
     return NLSCLASS_NL;
 if (c == '\t')
     return NLSCLASS_TAB;
 return NLSCLASS_CTRL;
    }
    w = NLSWidth(c);
    if (drawPrompt) {
 if (w > 0)
     return w;
 if (w == 0)
     return 1;
    }
    if ((w > 0 && !(Iscntrl(c) && (c & CHAR) < 0x100)) || (Isprint(c) && !nocomb))
 return w;
    return NLSCLASS_ILLEGAL;
}

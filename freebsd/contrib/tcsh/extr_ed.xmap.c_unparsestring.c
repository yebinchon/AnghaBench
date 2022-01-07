
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* buf; } ;
typedef char Char ;
typedef TYPE_1__ CStr ;


 char const CHAR ;
 char CTL_ESC (char) ;
 scalar_t__ Iscntrl (char) ;
 scalar_t__ Isprint (char) ;
 int Isspace (char) ;
 int MB_LEN_MAX ;
 int* _toascii ;
 int * _toebcdic ;
 int max (int,int ) ;
 int one_wctomb (char*,char) ;
 unsigned char* xmalloc (int) ;

unsigned char *
unparsestring(const CStr *str, const Char *sep)
{
    unsigned char *buf, *b;
    Char p;
    int l;


    buf = xmalloc((str->len + 1) * max(4, MB_LEN_MAX));
    b = buf;
    if (sep[0])

 *b++ = sep[0];




    for (l = 0; l < str->len; l++) {
 p = str->buf[l];
 if (Iscntrl(p)) {
     *b++ = '^';
     if (p == CTL_ESC('\177'))
  *b++ = '?';
     else



  *b++ = _toebcdic[_toascii[p]|0100];

 }
 else if (p == '^' || p == '\\') {
     *b++ = '\\';
     *b++ = (unsigned char) p;
 }
 else if (p == ' ' || (Isprint(p) && !Isspace(p)))
     b += one_wctomb((char *)b, p);
 else {
     *b++ = '\\';
     *b++ = ((p >> 6) & 7) + '0';
     *b++ = ((p >> 3) & 7) + '0';
     *b++ = (p & 7) + '0';
 }
    }
    if (sep[0] && sep[1])

 *b++ = sep[1];



    *b++ = 0;
    return buf;
}

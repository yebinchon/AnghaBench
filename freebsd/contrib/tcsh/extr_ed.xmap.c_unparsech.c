
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef int Char ;


 int CTL_ESC (char) ;
 scalar_t__ Iscntrl (int) ;
 scalar_t__ Isprint (int) ;
 int Isspace (int) ;
 int Strbuf_append1 (struct Strbuf*,int) ;
 int* _toascii ;
 int* _toebcdic ;

__attribute__((used)) static void
unparsech(struct Strbuf *buf, Char ch)
{
    if (ch == 0) {
 Strbuf_append1(buf, '^');
 Strbuf_append1(buf, '@');
    }
    else if (Iscntrl(ch)) {
 Strbuf_append1(buf, '^');
 if (ch == CTL_ESC('\177'))
     Strbuf_append1(buf, '?');
 else



     Strbuf_append1(buf, _toebcdic[_toascii[ch]|0100]);

    }
    else if (ch == '^') {
 Strbuf_append1(buf, '\\');
 Strbuf_append1(buf, '^');
    } else if (ch == '\\') {
 Strbuf_append1(buf, '\\');
 Strbuf_append1(buf, '\\');
    } else if (ch == ' ' || (Isprint(ch) && !Isspace(ch))) {
 Strbuf_append1(buf, ch);
    }
    else {
 Strbuf_append1(buf, '\\');
 Strbuf_append1(buf, ((ch >> 6) & 7) + '0');
 Strbuf_append1(buf, ((ch >> 3) & 7) + '0');
 Strbuf_append1(buf, (ch & 7) + '0');
    }
}

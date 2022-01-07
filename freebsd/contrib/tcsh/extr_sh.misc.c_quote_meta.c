
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {char const* s; scalar_t__ len; } ;
typedef char Char ;


 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int _DOL ;
 int _ESC ;
 int _GLOB ;
 int _META ;
 int _QB ;
 int _QF ;
 scalar_t__ cmap (char const,int) ;

const Char *
quote_meta(struct Strbuf *buf, const Char *s)
{
    buf->len = 0;
    while (*s != '\0') {
 if (cmap(*s, _META | _DOL | _QF | _QB | _ESC | _GLOB))
     Strbuf_append1(buf, '\\');
 Strbuf_append1(buf, *s++);
    }
    Strbuf_terminate(buf);
    return buf->s;
}
